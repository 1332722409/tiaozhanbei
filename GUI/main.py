# -*- coding: utf-8 -*-
# Author:  @ MuLun_Zhu
# reader > programmer > machine
# @Time :  2021/2/1 5:25 下午
import re
import threading
import tkinter.ttk
from time import sleep
from tkinter import *
from tkinter import messagebox, filedialog

import SimpleITK as sitk
import matplotlib
import numpy as np
import vtk
from PIL import Image
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
from vtk.util.vtkImageImportFromArray import *
from vtkmodules.util.vtkImageImportFromArray import vtkImageImportFromArray
import matplotlib as plt

import segmentation as seg

matplotlib.use('TkAgg')


plt.rcParams['font.sans-serif'] = ['SimHei'] # 步骤一（替换sans-serif字体）
plt.rcParams['axes.unicode_minus'] = False   # 步骤二（解决坐标轴负数的负号显示问题）

class MyEvent(vtk.vtkInteractorStyleTrackballCamera):

    def __init__(self, parent=None):
        self.AddObserver("MiddleButtonPressEvent",
                         self.middle_button_press_event)
        self.AddObserver("MiddleButtonReleaseEvent",
                         self.middle_button_release_event)
        self.AddObserver("LeftButtonPressEvent", self.left_button_press_event)
        self.AddObserver("LeftButtonReleaseEvent",
                         self.left_button_release_event)
        self.AddObserver("RightButtonPressEvent", self.right_button_press_event)
        self.AddObserver("RightButtonReleaseEvent",
                         self.right_button_release_event)

    def middle_button_press_event(self, obj, event):
        print("Middle Button pressed")
        self.OnMiddleButtonDown()
        return

    def middle_button_release_event(self, obj, event):
        print("Middle Button released")
        self.OnMiddleButtonUp()
        return

    def left_button_press_event(self, obj, event):
        print("Left Button pressed")
        self.OnLeftButtonDown()
        return

    def left_button_release_event(self, obj, event):
        print("Left Button released")
        self.OnLeftButtonUp()
        return

    def right_button_press_event(self, obj, event):
        print("right Button pressed")
        self.OnRightButtonDown()
        return

    def right_button_release_event(self, obj, event):
        print("right Button released")
        self.OnLeftButtonUp()
        return


# 键盘控制交互式操作
class KeyPressInteractorStyle(vtk.vtkInteractorStyleTrackballCamera):

    def __init__(self, parent=None):
        self.parent = vtk.vtkRenderWindowInteractor()
        if (parent is not None):
            self.parent = parent

        self.AddObserver("KeyPressEvent", self.keyPress)

    def keyPress(self, obj, event):
        key = self.parent.GetKeySym()
        if key == 'Up':
            volumeProperty.SetGradientOpacity(gradtfun)
            # 下面这一行是关键，实现了actor的更新
            renWin.Render()
        if key == 'Down':
            ren.SetBackground(0.8, 0.8, 0.8)  # 设置背景颜色，RGB
            ren.SetBackground2(1.0, 1.0, 1.0)
            ren.SetGradientBackground(1)
            # 下面这一行是关键，实现了actor的更新
            renWin.Render()

class TiaoZhanBei:
    def __init__(self):
        self.file_path = '' # 当前文件
        self.nii_or_jpg_or_others = 3  # 0表示nii，1表示jpg，2表示mhd，3表示其他
        self.open_logo_sign = True  # 打开logo
        self.tip_of_lung_data = True  # 仅提示一次
        self.color = {"light": "#829FD9", "mid": "#5C73F2", "dark": "#30468A",
                      'deep': '#0029FA', 'blue': '#9213b6', '0': "white",
                      '1': 'lightgrey'}
        self.initUI()

    def initUI(self):
        self.root = Tk()
        self.root.title("医影智云 V1.1 操作台")
        self.root['bg'] = 'black'
        self.root.bind("<Return>", self.get_xyz_with_event)
        self.root.focus_set()
        self.root['bg'] = 'white'
        self.create_menu()  # 创建菜单栏
        # self.report = StringVar()
        # self.report.set("nothing to show") # 关于报告显示部分，已在最终版本中删除
        self.root.iconbitmap('yyzy.ico')  # 更改窗口图标
        self.win_width = self.root.winfo_screenwidth()
        self.win_height = self.root.winfo_screenheight()
        self.root.geometry(
            "{0}x{1}+0+0".format(self.win_width, self.win_height))
        self.root.minsize(1000, 600)
        self.fourth_frame = None  # 默认不显示诊断信息
        welcome_frame = Frame(self.root, bg=self.color['light'], height=50)
        welcome_frame.pack(side=TOP, fill=X)
        Label(welcome_frame, text='欢迎使用医影智云平台', bg=self.color['light'],
              font=("微软雅黑", 18)).pack()

        upload_frame = Frame(self.root, bg=self.color['1'], height=30)
        upload_frame.pack(side=TOP, fill=X)
        Label(upload_frame, text='上传本地文件', bg=self.color['1']).pack(side=LEFT)
        upload_label = Label(upload_frame, text='上传', bg=self.color['1'],
                             width=10)
        upload_label.bind("<Button-1>", self.upload_data_with_event)
        upload_label.bind("<u>", self.upload_data_with_event)
        upload_label.pack(side=RIGHT)

        self.top_frame = Frame(self.root, bg=self.color['0'], height=30)
        self.top_frame.pack(side=TOP, fill=X)

        self.main_vtk_button = Label(self.top_frame, text="启用(←┘)", width=10)
        self.main_vtk_button.bind("<Button-1>", self.get_xyz_with_event)
        self.main_vtk_button.pack(side=RIGHT)

        self.position_label = Label(self.top_frame, text="位置：")
        self.position_label.pack(side=LEFT)

        xyz_label = ['x', 'y', 'z']
        self.x_intvar = IntVar()
        self.x_intvar.set(100)
        self.y_intvar = IntVar()
        self.y_intvar.set(100)
        self.z_intvar = IntVar()
        self.z_intvar.set(100)
        xyz_button = [self.x_intvar, self.y_intvar, self.z_intvar]

        for i in zip(xyz_label, [2, 4, 6], xyz_button):
            print(i)
            Label(self.top_frame, text=i[0], ).pack(
                side=LEFT)
            # TODO 边框样式
            label = Entry(self.top_frame, textvariable=i[2],
                          width=5, )
            # label.bind("<Return>", self.get_xyz_with_event)
            label.pack(side=LEFT)

        self.second_frame = Frame(self.root, bg=self.color['1'], height=30)
        self.second_frame.pack(side=TOP, fill=X)

        self.three_dimension = Label(self.second_frame, text='3D图像',
                                     bg=self.color['1'])
        self.three_dimension.pack(side=LEFT)

        self.three_dimension_button = Label(self.second_frame, text="启用",
                                            width=10, bg=self.color['1'])
        self.three_dimension_button.bind('<Button-1>', self.vtk_split)
        self.three_dimension_button.bind('<Control-O>', self.vtk_split)
        self.three_dimension_button.pack(side=RIGHT)

        self.info_frame = Frame(self.root)
        self.info_frame.pack(side=BOTTOM, anchor=SW)

        self.bar_frame = Frame(self.root, height=30)
        self.bar_frame['bg'] = self.color['0']
        self.bar_frame.pack(side=TOP, fill=X)

        self.name = StringVar()
        self.id = StringVar()
        self.part = StringVar()
        self.ps = StringVar()
        self.name.set('未知')
        self.id.set('未知')
        self.part.set('未知')
        self.ps.set('无')

        self.info_lists = Label(self.info_frame, text="name:\nid:\npart:\nps:",
                                justify=RIGHT)
        self.info_details = Label(self.info_frame,
                                  text="{name}\n{id}\n{part}\n{ps}".format(
                                      name=self.name.get(),
                                      id=self.id.get(),
                                      part=self.part.get(),
                                      ps=self.ps.get()[:10] + " ......"),
                                  justify=LEFT, wraplength=200,bg=self.color['0'])
        self.info_details.bind("<Button-1>", self.show_more_details)

        self.info_lists.pack(side=LEFT)
        self.info_details.pack(side=LEFT, fill=X)

        # self.third_frame = Frame(self.root, bg=self.color['0'])
        # self.third_frame.pack(side=TOP, fill=X) # 没有诊断报告
        # self.report_label = Label(self.third_frame, text='诊断报告',
        #                           bg=self.color['0'])
        # self.report_label.pack(side=LEFT)
        # self.report_button = Label(self.third_frame, text='展示',
        #                            bg=self.color['0'], width=10)
        # self.report_button.bind('<Button-1>', self.show_report_with_event)
        # self.report_button.pack(side=RIGHT)

        self.upload_Data()  # 读取数据先
        self.root.mainloop()

    def show_more_details(self, event):
        messagebox.showinfo("details", self.ps.get(), icon=messagebox.WARNING)

    def show_report_with_event(self, event):
        self.show_report()

    def show_report(self):
        if self.fourth_frame:
            self.fourth_frame.destroy()
            self.fourth_frame = None
            return
        self.fourth_frame = Frame(self.root, bg=self.color['1'])
        self.fourth_frame.pack(side=TOP, fill=X)
        self.report_details_label_1 = Label(self.fourth_frame, text="诊断结果",
                                            bg=self.color['1'])
        self.report_details_label_1.pack(side=LEFT)
        self.report_details_label_2 = Label(self.fourth_frame,
                                            text=self.report.get(),
                                            bg=self.color['1'])
        self.report_details_label_2.pack(side=LEFT)

    def get_xyz_with_event(self, event):
        self.get_xyz()

    def show_single_img(self, info):
        if hasattr(self, 'single_img'):
            print("destroy single img")
            self.single_img.destroy()
        if hasattr(self, 'img_frame'):
            self.img_frame.destroy()
        self.img_frame = Frame(self.root)
        self.img_frame.pack(side=TOP, fill=BOTH)
        self.f = Figure(dpi=200)

        f_plot = self.f.add_subplot(111)
        f_plot.imshow(info, cmap='gray')
        self.canvs1 = FigureCanvasTkAgg(self.f, self.img_frame)
        self.canvs1.draw()
        self.canvs1.get_tk_widget().pack(side=TOP, fill=BOTH)


    def get_xyz(self):
        try:
            x = self.x_intvar.get()
            y = self.y_intvar.get()
            z = self.z_intvar.get()
            if x==0 or y==0 or z==0:
                raise ValueError("x,y,z 都不能为0")
        except TclError:
            messagebox.showinfo("提示", "非法输入")
            return
        except ValueError as e:
            print(e)
            messagebox.showinfo("提示", "非法输入")
            return
        if str(x) == '': x = 0
        if str(y) == '': y = 0
        if str(z) == '': z = 0
        print("self.nii_or_jpg_or_others: ", self.nii_or_jpg_or_others)
        if self.nii_or_jpg_or_others == 0:
            self.load_data_without_event()
        try:
            shape = self.narry_3d.shape
            self.x_ = self.narry_3d[x+1]
            y_ = self.narry_3d[:, y+1:y+2, :]
            y_ = np.ascontiguousarray(y_)
            y_ = y_.reshape(y_.shape[0], y_.shape[2])
            self.y_ = y_[::-1]

            z_ = self.narry_3d[:, :, z+1:z+2]
            z_ = np.ascontiguousarray(z_)
            z_ = z_.reshape(z_.shape[0], z_.shape[1])
            self.z_ = z_[::-1]

            try:
                # assert self.nii_or_jpg_or_others!=1
                if self.nii_or_jpg_or_others==2:
                    raise TypeError("raise TypeError")
                self.x__ = self.npz_data[x+1]
                y__ = self.npz_data[:, y+1:y+2, :]
                y__ = np.ascontiguousarray(y__)
                y__ = y__.reshape(y__.shape[0], y__.shape[2])
                self.y__ = y__[::-1]

                z__ = self.npz_data[:, :, z+1:z+2]
                z__ = np.ascontiguousarray(z__)
                z__ = z__.reshape(z__.shape[0], z__.shape[1])
                self.z__ = z__[::-1]
            except (AttributeError,TypeError) as e:
                # self.x__ = self.narry_3d[x]
                # y__ = self.narry_3d[:, y:y + 1, :]
                # y__ = np.ascontiguousarray(y__)
                # y__ = y__.reshape(y__.shape[0], y__.shape[2])
                # self.y__ = y__[::-1]
                #
                # z__ = self.narry_3d[:, :, z:z + 1]
                # z__ = np.ascontiguousarray(z__)
                # z__ = z__.reshape(z__.shape[0], z__.shape[1])
                # self.z__ = z__[::-1]
                self.x__=[[0]]
                self.y__=[[0]]
                self.z__=[[0]]
                if self.tip_of_lung_data:
                    messagebox.showinfo("error","抱歉，肺部数据暂时没有诊断功能\n------下方诊断结果图为空------\n相关功能将在1.2版本发布，敬请期待")
                    self.tip_of_lung_data=False
                print("mhd没有诊断结果npz")
                print(e)

            if not hasattr(self, 'left_frame'):
                print("draw_left_frame")
                self.left_frame = Frame(self.root, width=80, bg=self.color['1'])
                self.left_frame.pack(side=LEFT, fill=Y)

                self.label_frame = Frame(self.left_frame, width=78,
                                         bg=self.color['1'])
                self.label_frame.pack(side=LEFT)
                self.only_x_img = Label(self.label_frame, text="X", width=9,
                                        bg=self.color['0'])
                self.only_x_img.bind("<Button-1>",
                                     lambda event: self.show_single_img(
                                         self.x_))
                self.only_x_img.pack(side=TOP)
                Label(self.label_frame, text="", width=9,
                      bg=self.color['1']).pack(side=TOP)
                self.only_y_img = Label(self.label_frame, text="Y", width=9,
                                        bg=self.color['0'])
                self.only_y_img.bind("<Button-1>",
                                     lambda event: self.show_single_img(
                                         self.y_))
                self.only_y_img.pack(side=TOP)
                Label(self.label_frame, text="", width=9,
                      bg=self.color['1']).pack(
                    side=TOP)
                self.only_z_img = Label(self.label_frame, text="Z", width=9,
                                        bg=self.color['0'])
                self.only_z_img.bind("<Button-1>",
                                     lambda event: self.show_single_img(
                                         self.z_))
                self.only_z_img.pack(side=TOP)

            self.f = Figure(dpi=200, tight_layout=True)
            f_plotx = self.f.add_subplot(231)
            f_plotx.imshow(self.x_, cmap='gray')
            f_ploty = self.f.add_subplot(232)
            f_ploty.imshow(self.y_, cmap='gray')
            f_plotz = self.f.add_subplot(233)
            f_plotz.imshow(self.z_, cmap='gray')

            if hasattr(self,"y_label_frame"):
                self.y_label_frame.destroy()

            if self.nii_or_jpg_or_others == 0:
                print("显示nii title")
                self.y_label_frame = Frame(self.root, width=30,bg=self.color['0'])
                self.y_label_frame.pack(side=LEFT, fill=Y)
                Label(self.y_label_frame, text="原\n始\n灰\n度\n值", font=('', 15),bg=self.color['0']).pack(side=TOP, pady=120)
                Label(self.y_label_frame, text="肿\n瘤\n概\n率\n分\n布", font=('', 15),bg=self.color['0']).pack(side=BOTTOM, ipady=80)
                f_plotx.set_title("横断位", fontsize=10)
                f_ploty.set_title("冠状位", fontsize=10)
                f_plotz.set_title("矢状位", fontsize=10)
            f_plotx.axis('off')
            f_ploty.axis('off')
            f_plotz.axis('off')

            f_plotx_ = self.f.add_subplot(234)
            f_plotx_.imshow(self.x__, cmap='gray')
            f_ploty_ = self.f.add_subplot(235)
            f_ploty_.imshow(self.y__, cmap='gray')
            f_plotz_ = self.f.add_subplot(236)
            f_plotz_.imshow(self.z__, cmap='gray')
            f_plotx_.axis('off')
            f_ploty_.axis('off')
            f_plotz_.axis('off')

            if hasattr(self, 'img_frame'):
                self.img_frame.destroy()
            if hasattr(self, 'single_img'):
                self.single_img.destroy()

            self.img_frame = Frame(self.root)
            self.img_frame.pack(side=TOP, fill=BOTH)
            self.canvs1 = FigureCanvasTkAgg(self.f, self.img_frame)
            self.canvs1.draw()
            self.canvs1.get_tk_widget().pack(side=TOP, fill=BOTH)

        except AttributeError as e:
            messagebox.showinfo("提示", "完整启用本功能需要类似nii三维数据")
            print(e)
        except (ValueError,IndexError) as e:
            messagebox.showinfo("提示", "超出图像范围"
                                      "x={},"
                                      "y={},"
                                      "z={}".format(shape[0], shape[1],
                                                    shape[2]))
            print(e)
        except TypeError as e:
            print(e)

    def show_about(event):
        messagebox.showinfo("about yyzy",
                            "本项目建立一套医学影像智能重建与分析系统，为医院提供在线疾病辅助诊断服务。\n该系统通过利用医院所上传的数据，使用智能重建算法和图像去噪技术，并基于卷积神经网络和深度学习算法得出病灶位置，再结合三维重建渲染模型，从而在三维模型处定位病灶空间坐标位置。\n目前实现对肺结节和脑瘤的医学影像数据检测，提高对医学影像数据的分析效率，降低误诊率")

    def check_for_update(event):
        messagebox.showinfo("check_for_update", "已经是最新版本了")

    def help(event):
        messagebox.showinfo("help info", "*************"
                                         "\n1.1版本更新：\n\n    1. 功能添加：\n"
                                         "        添加分别显示各方向图像功能，查阅大图，"
                                         "细节更清晰\n    2. 操作\n        "
                                         "全窗口实现Enter(Return)键绑定\n*************")

    def create_menu(self):
        menu = Menu(self.root)
        menu_self = Menu(menu, tearoff=False)
        menu_self.add_command(label='关于医影智云', command=self.show_about)
        menu_self.add_command(label='检查更新', command=self.check_for_update)
        menu_self.add_separator()
        menu_self.add_command(label="退出", command=self.root.destroy)
        menu.add_cascade(label="医影智云", menu=menu_self)

        menu_upload = Menu(menu, tearoff=False)
        menu.add_cascade(label='数据文件', menu=menu_upload)
        menu_upload_files = Menu(menu_upload)
        menu_upload_files.add_command(label='脑部数据',
                                      command=self.upload_Data)
        menu_upload_files.add_command(label='肺部数据',
                                      command=self.upload_Data)
        menu_upload_files.add_command(label='新冠数据',
                                      command=self.upload_Data)
        menu_upload_files.add_command(label='其他数据',
                                      command=self.upload_Data)
        menu_upload.add_cascade(label="上传", menu=menu_upload_files)

        menu_edit = Menu(menu, tearoff=False)
        menu_edit.add_command(label="仅支持基本编辑操作")
        menu.add_cascade(label='编辑', menu=menu_edit)

        menu_help = Menu(menu, tearoff=False)
        menu_help.add_command(label="帮助信息", command=self.help)
        menu.add_cascade(label='帮助', menu=menu_help)
        self.root.config(menu=menu)  # 配置显示

    def load_data_without_event(self):
        try:
            self.npz_data = np.load("./output/out.npz")[
                "arr_0"]
            print("当前npz数据：", self.npz_data.shape)
            # print("当前npz数据：", self.nii_path[0].split('')[0] + ".npz")
        except Exception as e:
            messagebox.showinfo("info", "缺失诊断信息")
            print("out.npz文件缺失：", e)

    def load_data(self, event):
        self.load_data_without_event()

    def upload_data_with_event(self, event):
        self.upload_Data()

    def bar(self):
        if hasattr(self, 'tk_bar'):
            self.tk_bar.destroy()
        if self.nii_or_jpg_or_others == 0:
            max_ = 850
        else:
            max_ = 150
        self.tk_bar = tkinter.ttk.Progressbar(self.bar_frame)
        self.tk_bar['maximum'] = max_
        self.tk_bar['length'] = 1600
        self.tk_bar.pack(anchor=CENTER)
        for i in range(1111):
            self.tk_bar['value'] = i
            sleep(0.04)
            if i == max_:
                # messagebox.showinfo("提示","三维视图准备就绪")
                self.tk_bar.destroy()
                break

    def upload_Data(self):
        try:
            if self.open_logo_sign:
                print("首次启动，打开logo")
                self.nii_path = (
                './logo.jpg',
                "")
            else: # 以后启用，就读取文件
                self.file_path=self.nii_path
                self.nii_path = filedialog.askopenfilenames()
            # 如果取消cancel，就会返回空字符串
            if self.nii_path == '':
                self.nii_path=self.file_path
                print("取消上传文件")
                return
            # 判断nii文件
            if '.nii' in self.nii_path[0]:
                self.nii_or_jpg_or_others = 0
                if messagebox.askquestion("提示", "诊断可能会占用您30秒的时间，点击Yes开始"):
                    self.ds = sitk.ReadImage(self.nii_path[0])
                    # 把itk.image转为array
                    self.narry_3d = sitk.GetArrayFromImage(self.ds)
                else:
                    print("取消上传nii文件")
                    return
            # 判断mhd文件
            elif '.mhd' in self.nii_path[0]:
                self.nii_or_jpg_or_others = 2
                try:
                    self.ds = sitk.ReadImage(self.nii_path[0])
                    self.narry_3d = sitk.GetArrayFromImage(self.ds)
                except:
                    print("mhd读取错误")
                    return
            elif '.jpg' in self.nii_path[0]:
                self.nii_or_jpg_or_others = 1
                self.draw_single_img()
            elif '.raw' in self.nii_path[0]:
                messagebox.showinfo("提示","请读取对应的mhd文件，而非raw文件")
            else:
                messagebox.showinfo("提示", "文件类型错误")
                return
            if self.open_logo_sign:
                self.open_logo_sign = False
                return
            self.thread_it(self.bar)
            self.thread_it(self.load_)

        except RuntimeError as e:
            print("RuntimeError in read npy data", e)
            messagebox.showinfo("提示", '错误的nii或jpg文件,请重新选择文件')
            # self.nii_path = ('./BraTS19_2013_2_1_flair.nii',)  # segmentation volume
        finally:
            print("nii_path: ", self.nii_path)

    def load_(self):
        print("--", self.nii_path[0])
        if self.nii_or_jpg_or_others == 1 and self.open_logo_sign == False:
            print("jpg: ", '.jpg' in self.nii_path[0])
            info = seg.process_yes_no(self.nii_path[0])
            confirm = 0
            if len(info) != 0:
                info = info[0].replace('\n', '')
                re_info1 = re.findall(r"\'(.*?)\'", info)
                confirm = messagebox.askokcancel("result", "初步诊断结果为： " + re_info1[
                    1] + "\n\n是否进一步诊断？(这可能需要额外的3-5秒)")
            else:
                sleep(4)
                messagebox.showinfo("error", "诊断失败，请检查输入文件是否正确")
            if confirm:
                self.thread_it(self.bar)
                info = seg.process_qing_zhong(self.nii_path[0])
                info = info[0].replace('\n', '')
                re_info2 = re.findall(r"\'(.*?)\'", info)
                messagebox.showinfo("result", "进一步诊断结果为： " + re_info1[
                    1] + re_info2[1])

        elif self.nii_or_jpg_or_others == 0:
            print("nii: ", '.nii' in self.nii_path[0])
            seg.process_naoliu(self.nii_path[0])
            messagebox.showinfo("提示", "即将准备就绪，请点击启用以继续")

        elif self.nii_or_jpg_or_others == 2:
            print("mhd: ", '.mhd' in self.nii_path[0])

        else:
            print("不是jpg图片,nii文件，也不是mhd文件")

    def draw_single_img(self):
        print("绘制logo_jpg")
        if hasattr(self,"y_label_frame"):
            self.y_label_frame.destroy()
        if hasattr(self, 'single_img'):
            self.single_img.destroy()
        if hasattr(self, 'img_frame'):
            self.img_frame.destroy()
        """
            self.img_frame = Frame(self.root)
            self.img_frame.pack(side=TOP, fill=BOTH)
            self.canvs1 = FigureCanvasTkAgg(self.f, self.img_frame)
            self.canvs1.draw()
            self.canvs1.get_tk_widget().pack(side=TOP, fill=BOTH)
        """
        self.single_img = Frame(self.root)
        self.single_img['bg'] = self.color['1']
        self.single_img.pack(fill=BOTH)

        im = Image.open(self.nii_path[0])
        image_arr = np.array(im)
        self.sf = Figure(dpi=200, tight_layout=True)
        self.simg = self.sf.add_subplot(111)
        self.simg.imshow(image_arr, cmap='gray')
        self.simg.axis('off')
        self.canvs1 = FigureCanvasTkAgg(self.sf, self.single_img)
        self.canvs1.draw()
        self.canvs1.get_tk_widget().pack(side=TOP, fill=BOTH)

    def vtk_split(self,event):
        # todo
        self.load_data_without_event()
        if self.nii_or_jpg_or_others==0:
            self.vtk_test()
        if self.nii_or_jpg_or_others==2:
            self.vtk_mhd()

    def vtk_test(self):
        global plane
        global m_pPlaneWidget
        global volumeMapper2
        global clippingVolume

        def my_call_back(pWidget, ev):
            # 表示当pWidget控件改变时，触发函数，监听函数
            if (pWidget):
                print(pWidget.GetClassName(), "Event Id:", ev)
            m_pPlaneWidget.GetPlane(plane)
            volumeMapper2.AddClippingPlane(plane)
            clippingVolume.SetMapper(volumeMapper2)
            print("Plane Normal = " + str(plane.GetNormal()))
            print("Plane Origin = " + str(plane.GetOrigin()))

        data = sitk.GetArrayFromImage(self.ds) + self.npz_data * 3000
        min5 = sitk.GetArrayFromImage(self.ds).min()
        max5 = sitk.GetArrayFromImage(self.ds).max()
        print(min5,max5)
        data = data[:, :, :]
        data = np.ascontiguousarray(data)

        spacing = self.ds.GetSpacing()  # 三维数据的间隔
        img_arr = vtkImageImportFromArray()  # 创建一个空的vtk类-----vtkImageImportFromArray
        img_arr.SetArray(
            data)  # 把array_data塞到vtkImageImportFromArray（array_data）
        img_arr.SetDataSpacing(spacing)  # 设置spacing
        origin = (0, 0, 0)
        img_arr.SetDataOrigin(origin)  # 设置vtk数据的坐标系原点
        img_arr.Update()
        srange = img_arr.GetOutput().GetScalarRange()

        min = min5
        max = max5+300
        diff = max - min  # 体数据极差
        inter = 4000 / diff
        shift = -min  # 可以加，不能减，人体内外分割处

        ren1 = vtk.vtkRenderer()
        ren1.SetViewport(0, 0.5, 0.5, 1.0)  # 设置窗口大小
        ren1.SetBackground(1.0, 0.9, 0.9)  # 设置背景颜色，RGB
        ren1.SetBackground2(1.0, 1.0, 1.0)  # 设置第二个背景颜色
        ren1.SetGradientBackground(1)  # 背景颜色渐变
        ren1.ResetCameraClippingRange()

        renWin = vtk.vtkRenderWindow()
        renWin.AddRenderer(ren1)  # 把一个空的渲染器添加到一个空的窗口上
        renWin.SetSize(2800, 1680)

        iren = vtk.vtkRenderWindowInteractor()
        iren.SetRenderWindow(renWin)
        style = vtk.vtkInteractorStyleTrackballCamera()
        iren.SetInteractorStyle(style)

        shifter = vtk.vtkImageShiftScale()  # 对偏移和比例参数来对图像数据进行操作 数据转换，之后直接调用shifter
        shifter.SetShift(shift)
        shifter.SetScale(inter)
        shifter.SetOutputScalarTypeToUnsignedShort()
        shifter.SetInputData(img_arr.GetOutput())
        shifter.ReleaseDataFlagOff()
        shifter.Update()

        tfun = vtk.vtkPiecewiseFunction()  # 不透明度传输函数---放在tfun
        tfun.AddPoint(1129, 0)  # 不切片时配置
        tfun.AddPoint(1300.0, 0.02)
        tfun.AddPoint(1600.0, 0.03)
        tfun.AddPoint(2000.0, 0.04)
        tfun.AddPoint(2200.0, 0.05)
        tfun.AddPoint(2500.0, 0.09)
        tfun.AddPoint(2800.0, 0.1)
        tfun.AddPoint(3000.0, 0.11)
        '''tfun.AddPoint(1129, 0)  # 不切片时配置
        tfun.AddPoint(1300.0, 0.02)
        tfun.AddPoint(1600.0, 0.03)
        tfun.AddPoint(2000.0, 0.04)
        tfun.AddPoint(2200.0, 0.05)
        tfun.AddPoint(2500.0, 0.2)
        tfun.AddPoint(2800.0, 0.3)
        tfun.AddPoint(3000.0, 0.4)'''

        gradtfun = vtk.vtkPiecewiseFunction()  # 梯度不透明度函数---放在gradtfun，目前还没有加？？？
        gradtfun.AddPoint(-1000, 8)
        gradtfun.AddPoint(0.5, 9)
        gradtfun.AddPoint(1, 10)

        ctfun = vtk.vtkColorTransferFunction()  # 颜色传输函数---放在ctfun
        # ctfun.AddRGBPoint(0.0, 0.2, 1.0, 1.0)  # 蓝色模型配置
        # ctfun.AddRGBPoint(600.0, 0.4, 0.6, 1.0)
        # ctfun.AddRGBPoint(1280.0, 0.4, 0.3, 1.0)
        # ctfun.AddRGBPoint(1960.0, 0.2, 0.37, 0.91)
        # ctfun.AddRGBPoint(2200.0, 0.4, 0.3, 1.0)
        # ctfun.AddRGBPoint(2500.0, 0.4, 0.6, 1.0)
        # ctfun.AddRGBPoint(3024.0, 0.6, 0.6, 0.6)
        ctfun.AddRGBPoint(900.0, 0.8, 0.8, 0.8)
        ctfun.AddRGBPoint(1900.0, 0.8, 0.8, 0.8)
        ctfun.AddRGBPoint(2800.0, 0.8, 0.8, 0.8)
        ctfun.AddRGBPoint(3600.0, 1.0, 0.2, 0.2)

        volumeMapper = vtk.vtkGPUVolumeRayCastMapper()  # 映射器volumnMapper使用vtk的管线投影算法
        volumeMapper.SetInputData(
            shifter.GetOutput())  # 向映射器中输入数据：shifter(预处理之后的数据)
        volumeProperty = vtk.vtkVolumeProperty()  # 创建vtk属性存放器,向属性存放器中存放颜色和透明度
        volumeProperty.SetColor(ctfun)
        volumeProperty.SetScalarOpacity(tfun)
        # volumeProperty.SetGradientOpacity(gradtfun)
        volumeProperty.SetInterpolationTypeToLinear()  # ???
        volumeProperty.ShadeOn()

        outline1 = vtk.vtkOutlineFilter()
        outline1.SetInputConnection(shifter.GetOutputPort())

        outlineMapper1 = vtk.vtkPolyDataMapper()
        outlineMapper1.SetInputConnection(outline1.GetOutputPort())
        outlineMapper1.ScalarVisibilityOff()

        outlineActor1 = vtk.vtkActor()
        outlineActor1.SetMapper(outlineMapper1)
        outlineActor1.GetProperty().SetColor(1, 0, 0)  ########第一个容器配置完成

        newvol = vtk.vtkVolume()  # 演员
        newvol.SetMapper(volumeMapper)
        newvol.SetProperty(volumeProperty)

        aCamera = vtk.vtkCamera()  # 设置相机，参数不是很懂
        aCamera.SetViewUp(0, 0, 1)
        aCamera.SetPosition(0, -1, 0)
        aCamera.SetFocalPoint(0, 0, 0)
        aCamera.ComputeViewPlaneNormal()
        aCamera.Azimuth(30.0)
        aCamera.Elevation(30.0)
        aCamera.Dolly(1.5)

        ren1.AddActor(outlineActor1)  # 添加演员和外壳
        ren1.AddVolume(newvol)
        ren1.SetActiveCamera(aCamera)
        ren1.ResetCamera()

        # 设置切割的模型
        volumeMapper2 = vtk.vtkGPUVolumeRayCastMapper()
        volumeMapper2.SetInputData(shifter.GetOutput())

        m_pPlaneWidget = vtk.vtkPlaneWidget()  # 设置隐平面
        m_pPlaneWidget.SetInteractor(iren)  # 与交互器关联
        m_pPlaneWidget.SetInputData(shifter.GetOutput())  # 设置数据集，用于初始化平面，可以不设置
        m_pPlaneWidget.SetResolution(80)  # 即：设置网格数
        m_pPlaneWidget.GetPlaneProperty().SetColor(.2, .8, 0.1)  # 设置颜色
        m_pPlaneWidget.GetPlaneProperty().SetOpacity(0.5)  # 设置透明度
        m_pPlaneWidget.GetHandleProperty().SetColor(0, .4, .7)  # 设置平面顶点颜色
        m_pPlaneWidget.GetHandleProperty().SetLineWidth(2)  # 设置平面线宽
        m_pPlaneWidget.NormalToZAxisOn()  # 初始法线方向平行于Z轴
        # m_pPlaneWidget.SetRepresentationToWireframe()  #平面显示为网格属性
        # m_pPlaneWidget.SetCenter(newvol.GetCenter())    #设置平面坐标
        # m_pPlaneWidget.SetInteractor(renWin.GetInteractor() )    #与交互器关联，感觉同上
        # m_pPlaneWidget.SetPlaceFactor(0.75)  # 设置控件大小
        m_pPlaneWidget.PlaceWidget()  # 放置平面
        m_pPlaneWidget.AddObserver("EndInteractionEvent", my_call_back)
        m_pPlaneWidget.On()  # 显示平面

        plane = vtk.vtkPlane()
        # plane.SetOrigin(90,0, 90) #设置原点位置
        # plane.SetNormal(1, 0, 1)   #设置法向量
        m_pPlaneWidget.GetPlane(plane)
        volumeMapper2.AddClippingPlane(plane)

        clippingVolume = vtk.vtkVolume()  # 设置参数同上
        clippingVolume.SetMapper(volumeMapper2)
        clippingVolume.SetProperty(volumeProperty)

        outline2 = vtk.vtkOutlineFilter()
        outline2.SetInputConnection(shifter.GetOutputPort())

        outlineMapper2 = vtk.vtkPolyDataMapper()
        outlineMapper2.SetInputConnection(outline2.GetOutputPort())
        outlineMapper2.ScalarVisibilityOff()

        outlineActor2 = vtk.vtkActor()
        outlineActor2.SetMapper(outlineMapper2)
        outlineActor2.GetProperty().SetColor(1, 0, 0)

        ren2 = vtk.vtkRenderer()
        ren2.SetBackground(0.9, 1.0, 0.9)  # 设置背景颜色，RGB
        ren2.SetBackground2(1.0, 1.0, 1.0)  # 设置第二个背景颜色
        ren2.SetGradientBackground(1)
        ren2.SetViewport(0.5, 0.5, 1.0, 1.0)

        ren2.AddVolume(clippingVolume)  # 添加演员和外壳
        ren2.AddActor(outlineActor2)

        renWin.AddRenderer(ren2)  # 第二个窗口完成

        ren3 = vtk.vtkRenderer()
        ren3.SetBackground(0.9, 1.0, 0.9)  # 设置背景颜色，RGB
        ren3.SetBackground2(1.0, 1.0, 1.0)  # 设置第二个背景颜色
        ren3.SetGradientBackground(1)
        ren3.SetViewport(0.0, 0.0, 0.5, 0.5)

        img_arr1 = vtkImageImportFromArray()  # 创建一个空的vtk类-----vtkImageImportFromArray
        img_arr1.SetArray(sitk.GetArrayFromImage(
            self.ds))  # 把array_data塞到vtkImageImportFromArray（array_data）
        img_arr1.SetDataSpacing(spacing)  # 设置spacing
        img_arr1.SetDataOrigin(origin)  # 设置vtk数据的坐标系原点
        img_arr1.Update()
        srange = img_arr1.GetOutput().GetScalarRange()

        min1 = srange[0]
        max1 = srange[1]

        diff = max1 - min1  # 体数据极差
        inter = 5000 / diff
        shift = - min1  # 可以加，不能减，人体内外分割处

        shifter1 = vtk.vtkImageShiftScale()  # 对偏移和比例参数来对图像数据进行操作 数据转换，之后直接调用shifter
        shifter1.SetShift(shift)
        shifter1.SetScale(inter)
        shifter1.SetOutputScalarTypeToUnsignedShort()
        shifter1.SetInputData(img_arr1.GetOutput())
        shifter1.ReleaseDataFlagOff()
        shifter1.Update()

        volumeMapper3 = vtk.vtkGPUVolumeRayCastMapper()  # 映射器volumnMapper使用vtk的管线投影算法
        volumeMapper3.SetInputData(
            shifter1.GetOutput())  # 向映射器中输入数据：shifter(预处理之后的数据)

        volume3 = vtk.vtkVolume()  # 演员
        volume3.SetMapper(volumeMapper3)
        volume3.SetProperty(volumeProperty)

        ren3.AddVolume(volume3)  # 添加演员和外壳
        ren3.AddActor(outlineActor2)

        renWin.AddRenderer(ren3)  # 第三个窗口完成

        ren4 = vtk.vtkRenderer()
        ren4.SetBackground(1.0, 0.9, 0.9)  # 设置背景颜色，RGB
        ren4.SetBackground2(1.0, 1.0, 1.0)  # 设置第二个背景颜色
        ren4.SetGradientBackground(1)
        ren4.SetViewport(0.5, 0.0, 1.0, 0.5)

        img_arr2 = vtkImageImportFromArray()  # 创建一个空的vtk类-----vtkImageImportFromArray
        img_arr2.SetArray(
            self.npz_data)  # 把array_data塞到vtkImageImportFromArray（array_data）
        img_arr2.SetDataSpacing(spacing)  # 设置spacing
        img_arr2.SetDataOrigin(origin)  # 设置vtk数据的坐标系原点
        img_arr2.Update()
        srange = img_arr2.GetOutput().GetScalarRange()

        min2 = srange[0]
        max2 = srange[1]

        diff2 = max2 - min2  # 体数据极差
        inter2 = 5000 / diff2
        shift2 = - min2  # 可以加，不能减，人体内外分割处

        shifter2 = vtk.vtkImageShiftScale()  # 对偏移和比例参数来对图像数据进行操作 数据转换，之后直接调用shifter
        shifter2.SetShift(shift2)
        shifter2.SetScale(inter2)
        shifter2.SetOutputScalarTypeToUnsignedShort()
        shifter2.SetInputData(img_arr2.GetOutput())
        shifter2.ReleaseDataFlagOff()
        shifter2.Update()

        volumeMapper4 = vtk.vtkGPUVolumeRayCastMapper()  # 映射器volumnMapper使用vtk的管线投影算法
        volumeMapper4.SetInputData(
            shifter2.GetOutput())  # 向映射器中输入数据：shifter(预处理之后的数据)

        volume4 = vtk.vtkVolume()  # 演员
        volume4.SetMapper(volumeMapper4)
        volume4.SetProperty(volumeProperty)

        ren4.AddVolume(volume4)  # 添加演员和外壳
        ren4.AddActor(outlineActor2)

        renWin.AddRenderer(ren4)  # 第四个窗口完成

        iren.Initialize()
        renWin.Render()
        renWin.SetWindowName("Medical Image Air V1.0")
        iren.Start()

    def vtk_mhd(self):
        path = self.nii_path[0]  # segmentation volume
        # ds = sitk.ReadImage(path)  # 读取nii数据的第一个函数sitk.ReadImage
        # self.narry_3d = sitk.GetArrayFromImage(ds)  # 把itk.image转为array

        self.narry_3d = np.ascontiguousarray(self.narry_3d)
        self.narry_3d = np.where(self.narry_3d > -320, -1024, self.narry_3d)

        spacing = self.ds.GetSpacing()  # 三维数据的间隔
        srange = [np.min(self.narry_3d), np.max(self.narry_3d)]
        img_arr = vtkImageImportFromArray()  # 创建一个空的vtk类-----vtkImageImportFromArray
        img_arr.SetArray(
            self.narry_3d)  # 把array_data塞到vtkImageImportFromArray（array_data）
        img_arr.SetDataSpacing(spacing)  # 设置spacing
        origin = (0, 0, 0)
        img_arr.SetDataOrigin(origin)  # 设置vtk数据的坐标系原点
        img_arr.Update()
        srange = img_arr.GetOutput().GetScalarRange()

        ren = vtk.vtkRenderer()
        renWin = vtk.vtkRenderWindow()
        renWin.AddRenderer(ren)  # 把一个空的渲染器添加到一个空的窗口上
        iren = vtk.vtkRenderWindowInteractor()
        iren.SetRenderWindow(renWin)  # 把上面那个窗口加入交互操作
        iren.SetInteractorStyle(
            KeyPressInteractorStyle(parent=iren))  # 在交互操作里面添加这个自定义的操作例如up,down

        min = srange[0]
        max = srange[1]
        diff = max - min  # 体数据极差
        inter = 1400 / diff
        shift = -min  # 可以加，不能减，人体内外分割处
        print(min, max, inter, shift)  # 这几个数据后面有用

        shifter = vtk.vtkImageShiftScale()  # 对偏移和比例参数来对图像数据进行操作 数据转换，之后直接调用shifter
        shifter.SetShift(shift)
        shifter.SetScale(inter)
        shifter.SetOutputScalarTypeToUnsignedShort()
        shifter.SetInputData(img_arr.GetOutput())
        shifter.ReleaseDataFlagOff()
        shifter.Update()

        tfun = vtk.vtkPiecewiseFunction()  # 不透明度传输函数---放在tfun
        tfun.AddPoint(1129, 0)  # 不切片时配置
        tfun.AddPoint(1300.0, 0.1)
        tfun.AddPoint(1600.0, 0.12)
        tfun.AddPoint(2000.0, 0.14)
        tfun.AddPoint(2200.0, 0.16)
        tfun.AddPoint(2500.0, 0.18)
        tfun.AddPoint(2800.0, 0.20)
        tfun.AddPoint(3000.0, 0.22)

        gradtfun = vtk.vtkPiecewiseFunction()  # 梯度不透明度函数---放在gradtfun
        gradtfun.AddPoint(-1500, 1)
        gradtfun.AddPoint(-500, 1)
        gradtfun.AddPoint(0, 2)
        gradtfun.AddPoint(500, 1)
        gradtfun.AddPoint(1500, 2)

        ctfun = vtk.vtkColorTransferFunction()  # 颜色传输函数---放在ctfun
        ctfun.AddRGBPoint(0.0, 1.0, 1.0, 0.0)  # 绿色模型配置
        ctfun.AddRGBPoint(600.0, 0.5, 1.0, 0.5)
        ctfun.AddRGBPoint(1280.0, 0.2, 0.9, 0.3)
        ctfun.AddRGBPoint(1960.0, 0.27, 0.81, 0.1)
        ctfun.AddRGBPoint(2200.0, 0.2, 0.9, 0.3)
        ctfun.AddRGBPoint(2500.0, 0.5, 1.0, 0.5)
        ctfun.AddRGBPoint(3024.0, 0.5, 0.5, 0.5)

        volumeMapper = vtk.vtkGPUVolumeRayCastMapper()  # 映射器volumnMapper使用vtk的管线投影算法
        volumeMapper.SetInputData(
            shifter.GetOutput())  # 向映射器中输入数据：shifter(预处理之后的数据)
        volumeProperty = vtk.vtkVolumeProperty()  # 创建vtk属性存放器,向属性存放器中存放颜色和透明度
        volumeProperty.SetColor(ctfun)
        volumeProperty.SetScalarOpacity(tfun)
        volumeProperty.SetInterpolationTypeToLinear()  # ???
        volumeProperty.ShadeOn()

        newvol = vtk.vtkVolume()  # 演员
        newvol.SetMapper(volumeMapper)
        newvol.SetProperty(volumeProperty)

        outline = vtk.vtkOutlineFilter()
        outline.SetInputConnection(shifter.GetOutputPort())

        outlineMapper = vtk.vtkPolyDataMapper()
        outlineMapper.SetInputConnection(outline.GetOutputPort())

        outlineActor = vtk.vtkActor()
        outlineActor.SetMapper(outlineMapper)  #######
        outlineActor.GetProperty().SetColor(1, 0, 0)

        ren.AddActor(outlineActor)
        ren.AddVolume(newvol)
        ren.SetBackground(1.0, 0.9, 0.9)  # 设置背景颜色，RGB
        ren.SetBackground2(1.0, 1.0, 1.0)  # 设置第二个背景颜色
        ren.SetGradientBackground(1)  # 背景颜色渐变
        renWin.SetSize(800, 700)

        planes = vtk.vtkPlanes()

        boxWidget = vtk.vtkBoxWidget()
        boxWidget.SetInteractor(iren)
        boxWidget.SetPlaceFactor(1.0)
        boxWidget.PlaceWidget(0, 0, 0, 0, 0, 0)
        boxWidget.InsideOutOn()
        '''boxWidget.AddObserver("StartInteractionEvent", StartInteraction)
        boxWidget.AddObserver("InteractionEvent",  ClipVolumeRender)
        boxWidget.AddObserver("EndInteractionEvent",  EndInteraction)'''

        outlineProperty = boxWidget.GetOutlineProperty()
        outlineProperty.SetRepresentationToWireframe()
        outlineProperty.SetAmbient(1.0)
        outlineProperty.SetAmbientColor(1.0, 1.0, 1.0)
        outlineProperty.SetLineWidth(9)

        selectedOutlineProperty = boxWidget.GetSelectedOutlineProperty()
        selectedOutlineProperty.SetRepresentationToWireframe()
        selectedOutlineProperty.SetAmbient(1.0)
        selectedOutlineProperty.SetAmbientColor(1, 0, 0)
        selectedOutlineProperty.SetLineWidth(3)

        ren.ResetCamera()
        iren.Initialize()
        renWin.Render()
        iren.SetInteractorStyle(MyEvent())
        renWin.SetWindowName("Medical Image Air V1.0")
        iren.Start()

    def thread_it(self, func, *args):
        '''将函数打包进线程'''
        # 创建
        t = threading.Thread(target=func, args=args)
        # 守护 !!!
        t.setDaemon(True)
        # 启动
        t.start()
        # 阻塞--卡死界面！
        # t.join()


if __name__ == '__main__':
    app = TiaoZhanBei()

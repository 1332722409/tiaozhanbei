# -*- coding: utf-8 -*-
# Author:  @ MuLun_Zhu
# reader > programmer > machine
# @Time :  2021/2/1 5:25 下午


import tkinter as tk

from PIL import Image, ImageTk
import time


class TiaoZhanBei:
    def __init__(self):
        # super().__init__()
        color = {"dark": "#888888", "mid": "#999999", "light": "#aaaaaa",
                 "little_grey": "#dddddd"}
        xyz_label = ['x', 'y', 'z']
        self.window = tk.Tk()
        self.x = tk.IntVar()
        self.x.set(0)
        self.y = tk.IntVar()
        self.y.set(0)
        self.z = tk.IntVar()
        self.z.set(0)
        self.depth = tk.IntVar()
        self.depth.set(0)
        xyz_button = [self.x, self.y, self.z]

        self.top_frame = tk.Frame(self.window, bg=color['dark'], height=30)
        self.top_frame.pack(side=tk.TOP, fill=tk.X)

        self.position_label = tk.Label(self.top_frame, text="Position",
                                       bg=color['mid'])
        self.position_label.grid(row=0, column=0)
        for i in zip(xyz_label, [2, 4, 6], xyz_button):
            print(i)
            tk.Label(self.top_frame, text=i[0], bg=color['dark'], ). \
                grid(row=0, column=i[1])
            # TODO 边框样式
            label = tk.Entry(self.top_frame, textvariable=i[2],
                             bg=color['little_grey'], width=5, )
            label.grid(row=0, column=i[1] + 1)
        self.depth_label = tk.Label(self.top_frame, text='depth',
                                    bg=color['mid'])
        self.depth_label.grid(row=0, column=8)
        self.depth_Entry = tk.Entry(self.top_frame, textvariable=self.depth,
                                    width=5, bg=color['little_grey'])
        self.depth_Entry.grid(row=0, column=9)

        self.left_frame = tk.Frame(self.window, bg=color['mid'], width=400)
        self.left_frame.pack(side=tk.LEFT, fill=tk.Y)

        # self.left_canvas = tk.Canvas(self.left_frame,)

        start = time.time()
        " another clearer way use 0.68s"
        # x_photo = tk.PhotoImage(file='test.png').zoom(20)
        # x_photo = x_photo.subsample(51)
        " useful way use 0.015s"
        x_photo = Image.open('x.png').resize((190, 190))
        x_photo = ImageTk.PhotoImage(x_photo)
        self.x_img_label = tk.Label(self.left_frame, image=x_photo,
                                    bg=color['mid'])
        self.x_img_label.grid(row=0, column=0)
        y_photo = Image.open('y.png').resize((190, 190))
        y_photo = ImageTk.PhotoImage(y_photo)
        self.y_img_label = tk.Label(self.left_frame, image=y_photo,
                                    bg=color['mid'])
        self.y_img_label.grid(row=0, column=1,columnspan=2)
        z_photo = Image.open('z.png').resize((190, 190))
        z_photo = ImageTk.PhotoImage(z_photo)
        self.z_img_label = tk.Label(self.left_frame, image=z_photo,
                                    bg=color['mid'])
        self.z_img_label.grid(row=1, column=0)
        self.name_info = tk.Label(self.left_frame,text="姓名:\nid:\npart:\nps:",bg=color['mid'],justify=tk.RIGHT)
        self.name_info.grid(row=1,column=1)
        name="朱峻辉"
        self._info = tk.Label(self.left_frame,text="{name}\n123456\nbrain\n我是一条备注".format(name=name),bg=color['mid'],justify=tk.LEFT)
        self._info.grid(row=1,column=2,columnspan=2)

        end = time.time()
        print(end - start)

        self.right_frame = tk.Frame(self.window, bg=color['light'], width=400)
        self.right_frame.pack(side=tk.RIGHT, fill=tk.Y)
        d_photo = Image.open('3D.png').resize((395, 395))
        d_photo = ImageTk.PhotoImage(d_photo)
        self.d_img_label = tk.Label(self.right_frame, image=d_photo,
                                    bg=color['little_grey'])
        self.d_img_label.pack()

        self.window.title("医影智云 V1.0")
        self.window.iconbitmap('yyzy.ico')  # 更改窗口图标
        self.window.geometry("800x440")
        self.window.mainloop()


if __name__ == '__main__':
    app = TiaoZhanBei()
    # app.mainloop()

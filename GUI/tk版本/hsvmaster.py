# -*- coding: utf-8 -*-
# Author:  @ MuLun_Zhu
# reader > programmer > machine
# @Time :  2021/2/4 10:17 下午


 1 import os
 2 from tkinter import *
 3 from PIL import Image, ImageTk
 4
 5 os.chdir('D:/programe/matlab/img')
 6
 7
 8
 9
10 class GUI():
11     def __init__(self,window):
12         self.window = window
13         #title
14         self.window.title("HsvMaster")
15         #siz=800*600,position=(500,200)
16         self.window.geometry('1000x600+500+200')
17         self.window["bg"] = "DimGray"
18         # icon
19         self.icon = ImageTk.PhotoImage(file='hsv_icon.ico')
20         self.window.call('wm','iconphoto',self.window._w,self.icon)
21
22
23     def create_widgets(self):
24
25         #scale
26         self.hmin_label = Label(self.window,text='色调下限',fg='WhiteSmoke',bg="DimGray")
27         self.hmin_scale = Scale(self.window,orient=HORIZONTAL,from_=0,to=255,resolution=1,tickinterval=50,length=200,width=7,fg='WhiteSmoke',bg="DimGray")
28         self.hmax_label = Label(self.window,text='色调上限',fg='WhiteSmoke',bg="DimGray")
29         self.hmax_scale = Scale(self.window,orient=HORIZONTAL,from_=0,to=255,resolution=1,tickinterval=50,length=200,width=7,fg='WhiteSmoke',bg="DimGray")
30         self.smin_label = Label(self.window,text='饱和度下限',fg='WhiteSmoke',bg="DimGray")
31         self.smin_scale = Scale(self.window,orient=HORIZONTAL,from_=0,to=255,resolution=1,tickinterval=50,length=200,width=7,fg='WhiteSmoke',bg="DimGray")
32         self.smax_label = Label(self.window,text='饱和度上限',fg='WhiteSmoke',bg="DimGray")
33         self.smax_scale = Scale(self.window,orient=HORIZONTAL,from_=0,to=255,resolution=1,tickinterval=50,length=200,width=7,fg='WhiteSmoke',bg="DimGray")
34         self.vmin_label = Label(self.window,text='明度下限',fg='WhiteSmoke',bg="DimGray")
35         self.vmin_scale = Scale(self.window,orient=HORIZONTAL,from_=0,to=255,resolution=1,tickinterval=50,length=200,width=7,fg='WhiteSmoke',bg="DimGray")
36         self.vmax_label = Label(self.window,text='明度上限',fg='WhiteSmoke',bg="DimGray")
37         self.vmax_scale = Scale(self.window,orient=HORIZONTAL,from_=0,to=255,resolution=1,tickinterval=50,length=200,width=7,fg='WhiteSmoke',bg="DimGray")
38
39         # scale position
40         self.hmin_label.grid(row=0, column=0,padx=15)
41         self.hmin_scale.grid(row=0,column=1,pady=2)
42         self.hmax_label.grid(row=1, column=0)
43         self.hmax_scale.grid(row=1,column=1,pady=2)
44         self.smin_label.grid(row=2, column=0)
45         self.smin_scale.grid(row=2,column=1,pady=2)
46         self.smax_label.grid(row=3, column=0)
47         self.smax_scale.grid(row=3,column=1,pady=2)
48         self.vmin_label.grid(row=4, column=0)
49         self.vmin_scale.grid(row=4,column=1,pady=2)
50         self.vmax_label.grid(row=5, column=0)
51         self.vmax_scale.grid(row=5,column=1,pady=2)
52
53         #img
54         self.img = Image.open('man.jpg')
55         self.img = self.img.resize((300, 300))
56         self.img = ImageTk.PhotoImage(self.img)
57
58         self.orign = Label(self.window,image=self.img,width=300,height=300)
59         self.work = Label(self.window,image=self.img,width=300,height=300)
60         #img position
61         self.orign.place(x=320, y=30)
62         self.work.place(x=650,y=30)
63
64         #Button
65         self.import_button = Button(self.window, text='导入原图',font=('隶书',45), height=2, width=9,fg='WhiteSmoke',bg="BurlyWood")
66         self.clear_button = Button(self.window, text='删除所有',font=('隶书',12), height=2, width=15,fg='WhiteSmoke',bg="BurlyWood")
67         self.delete_button = Button(self.window, text='删除当前',font=('隶书',12), height=2, width=15,fg='WhiteSmoke',bg="BurlyWood")
68         self.switch_button = Button(self.window,text='区域切换',font=('隶书',12), height=2, width=15,fg='WhiteSmoke',bg="BurlyWood")
69         self.save_button = Button(self.window, text='区域暂存',font=('隶书',12), height=2, width=15,fg='WhiteSmoke',bg="BurlyWood")
70         self.merge_button = Button(self.window, text='合并区域',font=('隶书',12), height=2, width=15,fg='WhiteSmoke',bg="BurlyWood")
71         self.picture_button = Button(self.window, text='生成图片',font=('隶书',12), height=2, width=15,fg='WhiteSmoke',bg="BurlyWood")
72
73         #button position
74         self.import_button.place(x=18,y=400)
75         self.clear_button.place(x=370,y=420)
76         self.delete_button.place(x=570,y=420)
77         self.switch_button.place(x=770,y=420)
78         self.save_button.place(x=370,y=500)
79         self.merge_button.place(x=570,y=500)
80         self.picture_button.place(x=770,y=500)
81
82
83
84
85 def gui_start():
86
87     my_window = Tk()
88     my_gui = GUI(my_window)
89     my_gui.create_widgets()
90     my_window.mainloop()
91
92
93 gui_start()

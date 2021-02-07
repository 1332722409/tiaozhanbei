# -*- coding: utf-8 -*-
# Author:  @ MuLun_Zhu
# reader > programmer > machine
# @Time :  2021/2/4 6:52 下午

import re
import tkinter as tk
# 消息盒子
from urllib import parse
# 消息盒子
import tkinter.messagebox as msgbox
import webbrowser

class Vip_Parse:
    # 1、重写构造函数
    def __init__(self,width=500,heigth=300):
        # 声明类属性
        self.w = width
        self.h = heigth
        # 软件名称
        self.title = "vip视频解析助手"
        # 创建软件界面
        self.root = tk.Tk(className=self.title)

        # 用户输入视频链接地址
        self.url = tk.StringVar()   # 指明数据类型为字符串

        # 定义播放源
        self.v = tk.IntVar()
        self.v.set(1)

        # 软件上半部分
        frame_1 = tk.Frame(self.root)
        frame_2 = tk.Frame(self.root)

        # 控件内容设置  padx坐标
        group = tk.Label(frame_1,text="播放通道:",padx=10,pady=10)
        tb = tk.Radiobutton(frame_1, text='通道一', variable=self.v, value=1, width=10, height=3)

        # 下半部分
        lable = tk.Label(frame_2,text="请输入视频地址")
        # 输入框  textvariable传值  直接复制
        enrty = tk.Entry(frame_2,textvariable=self.url,highlightcolor='Fuchsia',highlightthickness=1, width=35)
        play = tk.Button(frame_2, text="播放", font=('楷体', 12), fg='Purple', width=2, height=1, command=self.video_play)
        # 激活控件布局
        frame_1.pack()
        frame_2.pack()

        # 确定位置
        group.grid(row=0,column=0)
        tb.grid(row=0,column=1)

        lable.grid(row=0,column=0)
        enrty.grid(row=0,column=1)
        play.grid(row=0,column=2,ipadx=10,ipady=10)

    # 定义播放功能
    def video_play(self):
        # 视频解析网站地址
        port_1 = 'http://www.wmxz.wang/video.php?url='
        # 正则表达是判定是否为合法链接
        if re.match(r'^https?:/{2}\w.+$', self.url.get()):
            if self.v.get() == 1:
                # 拿到用户输入的地址
                ip = self.url.get()
                # 视频链接加密
                ip = parse.quote_plus(ip)
                # 浏览器打开
                webbrowser.open(port_1 + self.url.get())
        else:
            msgbox.showerror(title='错误', message='视频链接地址无效，请重新输入！')

    def loop(self):
        # 窗口拉升
        self.root.resizable(True,True)
        # 启动
        self.root.mainloop()

if __name__ == '__main__':
    app = Vip_Parse()
    app.loop()

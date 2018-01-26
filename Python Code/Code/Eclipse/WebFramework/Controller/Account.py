#!/usr/bin/env python
#_*_ coding:utf-8 _*_


def login():
    #读取html文件
    f = file('E:\毕业设计\代码\Eclipse\WebFramework\View\login.html', 'r')
    data = f.read()
    return data

def logout():
    return 'logout'
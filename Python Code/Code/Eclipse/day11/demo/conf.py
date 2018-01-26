#!/usr/bin/env python
#_*_ coding:utf-8 _*_

def index():
    return 'index'

def login():
    return 'login'

url = (
       ('/index/', index),
       ('/login/', login),
    )
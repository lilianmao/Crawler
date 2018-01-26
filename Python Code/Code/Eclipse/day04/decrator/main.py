#!/usr/bin/env python
#_*_ coding:utf-8 _*_


def outer(fun):
    def wrapper(arg):
        print '验证'
        fun(arg)
    return wrapper          #返回wrapper整个函数

#执行完下一句话，把fun1当做参数传入fun，开始执行。
@outer
def fun1(arg):
    print 'fun1', arg
    
fun1('执行')
'''实际函数变为以下函数
fun1 = 
def wrapper():
        print '验证'
        fun()
'''









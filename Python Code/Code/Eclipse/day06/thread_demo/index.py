#!/usr/bin/env python
#_*_ coding:utf-8 _*_


from threading import Thread
import time

def Foo(arg):
    for item in range(10):
        print item
        time.sleep(1)
    #print arg

print 'before'

t1 = Thread(target=Foo, args=(1,))      #第一个是函数，第二个是参数。

print t1.isDaemon()                                #守护线程。
#t1.setDaemon(True)                             #不等子线程，主线程先结束（那么子线程相应的销毁）。
print t1.getName()

t1.start()

t1.join(5)                                               #主线程等待子线程执行。超时时间（5s）最多等待

print 'after'




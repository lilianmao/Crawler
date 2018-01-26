#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from threading import Thread
import time

class MyThread(Thread):             #自定义的线程。
    
    def run(self):
        time.sleep(10)
        print '我是线程。'
        
#t1 = Thread(target=)

def Bar():
    print 'bar'
    
t1 = MyThread(target=Bar)
t1.start()
print 'voer'
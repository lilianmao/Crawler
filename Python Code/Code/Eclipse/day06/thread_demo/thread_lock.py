#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import threading
import time

num1 = 0;
num2 = 0;

def run(n):
    time.sleep(1)
    #锁的位置。
    global num1
    global num2
    
    lock.acquire()    
    num1 += 1;
    print '%s\n' %num1
    
    lock.acquire()
    num2+=2;
    print '%s\n' %num2
    
    lock.release()
    lock.release()

lock = threading.Lock()

for i in range(10):
    t = threading.Thread(target=run, args=(i, ))
    t.start()






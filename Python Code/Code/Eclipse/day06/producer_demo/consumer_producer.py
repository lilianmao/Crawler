#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import threading
import time, Queue
import random

def Producer(name, que):
    
    while True:
        if que.qsize() < 3:                  #小于3个方才生产包子。
            que.put('baozi')
            print '%s:Make a baozi...' %name
        time.sleep(random.randrange(1))

def Consumer(name, que):
    
    while True:
        try:
            que.get_nowait()        #不等待
            print '%s:Got a baozi...' %name
        except Exception:
            print '没有包子了'
        time.sleep(random.randrange(3))
    
q = Queue.Queue()
p1 = threading.Thread(target=Producer, args=['lilin1', q])
p2 = threading.Thread(target=Producer, args=['lilin2', q])
p1.start()
p2.start()

c1 = threading.Thread(target=Consumer, args=['zhouzhou1', q])
c2 = threading.Thread(target=Consumer, args=['zhouzhou2', q])
c1.start()
c2.start()

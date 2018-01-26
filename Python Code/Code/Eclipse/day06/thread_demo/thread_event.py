#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import threading
import time

def producer():
    print '卖包子'
    
    event.wait()
    print 'somebody is coming for baozi'
    time.sleep(3)
    event.wait()
    
    print '你的包子好了'
    
def consumer():
    print '买包子'
    event.set()
    
    time.sleep(3)
    print 'waiting for baozi'
    print event.wait()
    
    print '哎呀，真好吃'
    
    
event = threading.Event()
p = threading.Thread(target=producer)
c = threading.Thread(target=consumer)

p.start()
c.start()

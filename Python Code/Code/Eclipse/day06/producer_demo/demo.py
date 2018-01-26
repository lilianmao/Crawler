#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from threading import Thread
from Queue import Queue
import time

class Producer(Thread):
    
    def __init__(self, name, queue):
        '''
        @param name: 厨师的名字
        @param queue: 容器
        '''
        self.__Name = name
        self.__Queue = queue        #使用主队列
        super(Producer, self).__init__()
    
    def run(self):
        while True:
            #满与不满两种情况。
            if self.__Queue.full():
                time.sleep(1)
            else:
                self.__Queue.put('baozi')
                time.sleep(1)
                print '%s 生产了一个包子' %(self.__Name)
        #Thread.run(self)        用我们自己的run方法。
        
class Consumer(Thread):
    
    def __init__(self, name, queue):
        self.__Name = name
        self.__Queue = queue
        super(Consumer, self).__init__()
    
    def run(self):
        while True:
            if self.__Queue.empty():
                time.sleep(1)
            else:
                self.__Queue.get
                time.sleep(1)
                print '%s 消费了一个包子' %(self.__Name)
        #Thread.run(self)
        
queue = Queue(maxsize=10)

#Producer
lilin = Producer('李林1',queue)
lilin.start()
lilin = Producer('李林2',queue)
lilin.start()
lilin = Producer('李林3',queue)
lilin.start()

#Consumer
for item in range(10):
    name = 'zhouzhou%d' %(item)
    temp = Consumer(name, queue)
    temp.start()
'''
queue.put('1')
queue.put('2')

print queue.qsize()
print queue.get()
print queue.empty()
'''








#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from abc import ABCMeta, abstractmethod
from _pyio import __metaclass__

class Alert:            #抽象类
    
    __metaclass__ = ABCMeta
    
    @abstractmethod
    def Send(self):
        pass
    
class Weixin(Alert):
    
    def __init__(self):
        print '__init__'

    def Send(self):
        print 'Weixin'
        
f = Weixin()
f.Send()








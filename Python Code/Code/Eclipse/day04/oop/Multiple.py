#!/usr/bin/env python
#_*_ coding:utf-8 _*_

class A:
    
    def __init__(self):
        print 'This is A'
    
    def save(self):
        print 'Save Mothod from A'
        
class B(A):
    
    def __init__(self):
        print 'This is B'

class C(A):
    
    def __init__(self):
        print 'This is C'

    def save(self):
        print 'Save Mothod from C'

class D(C, B):          #从左边开始继承，找到即刻输出。
    
    def __init__(self):
        print 'This is D'

d = D()
d.save() 






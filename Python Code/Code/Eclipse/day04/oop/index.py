#!/usr/bin/env python
#_*_ coding:utf-8 _*_

'''
class Person:
    
    blood = '血'

    def __init__(self, name):
        self.name = name

p1 = Person('李林')
print p1.name
'''
'''
class Province(object):
    
    memo = '中国的23个省之一'
    
    def __init__(self, name, capital, leader, flag):
        self.Name = name
        self.Capital = capital
        self.Leader = leader
        
        self.__Country = flag
    
    def sport_meet(self):
        print self.Name + '正在开运动会'
    
    @staticmethod
    def Foo():
        print '每个省要带头反腐'
    
    def Show(self):                 #通过函数提供访问私有字段的接口
        print self.__Country
    
    def __sha(self):
        print '我是李林'
        
    def Show_sha(self):         #通过函数提供访问私有函数的接口
        self.__sha()
    
    #只读
    @property
    def Bar(self):          #特性。
        print self.Name
    
    #可改
    def Thailand(self, value):
        self.__Country = value;

js = Province('江苏','南京','李源潮',True)
print js.memo
print js.Name, js.Capital, js.Leader
js.sport_meet()
js.Bar
js.Show()
js.Show_sha()
'''

'''
class Foo:
    def __init__(self):
        pass
    
    def __del__(self):
        print '解释器要销毁我了'
    
    def __call__(self):
        print 'call'
    
f1 = Foo()
f1()                #对象加括号执行call方法。
'''

class Father(object):
    
    def __init__(self):
        self.Fname = 'Father'
        print 'Father.__init__'
    
    def Func(self):
        print 'Father.Func'
        
    def Bad(self):
        print 'Father.抽烟喝酒烫头'

class Son(Father):
    
    def __init__(self):
        self.Sname = 'Son'
        print 'Son.__init__'
        Father.__init__(self)
        super(Son, self).__init__()     #加上对象

    def Bar(self):
        print 'Son.Bar'
        
    def Bad(self):
        print 'Son.喝酒'

s1 = Son()
s1.Bar()
s1.Func()
s1.Bad()









#!/usr/bin/env python
#_*_ coding:utf-8 _*_

class Person(object):
    
    staticstr = 'str'       #静态字段（面向类）， 动态字段（面向对象）。
    
    def __init__(self, name, age, gene,weight, clothes):
        self.name = name
        self.age = age
        self.__Gene = gene
        self.weight=weight
        self.__clothes=clothes
        
    def talk(self, msg):
        print msg
        
    def fight(self, value):
        if self.weight > value:
            print '打'
        else:
            print '跑'
    
    @staticmethod
    def fun():
        print '静态方法'
    
    #读取的方法
    @property
    def Clothes(self):
        return self.__clothes
    
    #写的方法——函数名.setter
    @Clothes.setter
    def Clothes(self, value):
        self.__clothes = value
    
    def __call__(self):
        print self.name, self.age,self.weight
        
p1 = Person('李林', 21, 'a', 55, 'Nike')
p2 = Person('peral', 21, 'b', 48, 'adidas')

p2.talk('Thank you very much')
p1.talk('鳖说了，可否一战')
p1.fight(p2.weight);

data = p1.__dict__
for item in data:
    print item
print data

print Person.staticstr              #获取静态字段的方法。
 
 
 
 
 
 
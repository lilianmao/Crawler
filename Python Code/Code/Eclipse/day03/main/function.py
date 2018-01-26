#!/usr/bin/env python
#_*_ coding:utf-8 _*_
from sys import argv
'''
def fun(name, action = '砍柴'):
    print name, '去', action

fun('李林', 'zhejiang university')
fun('姜峰', 'xiamen normal university')
fun('仇之')
fun('魏玄颖')
'''
'''
def show1(*arg):
    for item in arg:
        print item
show1(['李林','姜峰'])
show1('仇之','魏玄颖')

def show2(**argv):
    for item in argv.items():
        print item
user_dict = {'lilin':'IT', 'peral':'CS'}
show2(**user_dict)
show2(name = 'lilin', age = '21')
'''
'''
print range(10)
print xrange(10)
for item in xrange(10):
    print item
'''

'''
def function():
    yield 1
    yield 2
    yield 3
    
result = function()
for item in result:
    print item
print result
'''

'''
def AlexReadlines():
    seek = 0;               #游标
    while True:
        with open(u'E:/temp.txt','r') as f:
            f.seek(seek)
            data = f.readline()
            if data:
                seek = f.tell();        #获取当前位置的值记入游标
                yield data
            else:
                return

print AlexReadlines()
for item in AlexReadlines():
    print item.decode('mbcs').encode('utf-8')   #windows系统下编码格式为mbcs格式；
'''
'''
result = 'gt' if 1 > 3 else 'lt'        #真前假后
print result

temp = lambda x,y:x+y               #匿名函数，一次调用
print temp(4,10) 
'''

'''
a = []
a1 = list()
print help(a)
print dir(a)
print  vars()
print type(a1)
'''

'''
print abs(-9)
print bool(2)
print divmod(9, 2)
print max([11,22,33,444])
print all([1,2,3,4])                #所有为真方为真。
print any([1,2,3,0])              #一个为真即为真。

print chr(66)
print ord('A')
print bin(2)
print oct(2)
print hex(2)
'''

'''
li = ['moto360', 'AppleWatch' , 'inWatch']
for item in li:
    print item
for item in enumerate(li, 1):                   #序列值
    print item
for item in enumerate(li, 10):
    print item
'''

'''
s = 'i am {0}'                                          #占位符。
print s.format('lilin')

def Function(arg):
    print arg
Function('lilin')
apply(Function, ('aaaa'))
'''

'''
li = [11,22,33]
def foo(arg):
    return arg + 100
print map(foo, li)                          #把序列里的每个数作为参数传入function。
print map(lambda arg : arg+100, li)

def function(arg):
    if arg < 22:
        return True
    else:
        return False
print filter(function, li)

print reduce(lambda x, y:x*y, li)   #如果传入的个数小于等于1，默认另个一数为0，但是function必须有两个参数。
'''
'''
x = [1,2,3,4]
y = [2,3,4,5]
z = [3,4,5,6]
print zip(x,y,z)        #按列拼接。


temp = 'sys'
model = __import__(temp)
print model.path.decode('utf-8').encode('gbk')

'''

'''
import sqlserverhelper
print sqlserverhelper.count()

temp = 'mysqlhelper'
func = 'count'

model  = __import__(temp)           #以字符串的形式导入模块。以字符串的形式寻找函数。
function = getattr(model, func)
print function
'''

'''
import random

print random.random()
print random.randint(1,5)
print random.randrange(1,4)


#验证码
code = []
for i in range(6):
    if i == random.randint(1, 5):
        code.append(str(random.randint(1, 5)))
    else:
        temp = random.randint(65, 90)
        code.append(chr(temp))
print ''.join(code)                     #仅开辟一块内存
'''

'''
import hashlib

hash = hashlib.md5()
hash.update('admin')
print hash.hexdigest()
print hash.digest()
'''

import pickle

'''
li  = ['alex', 11, 22, 'ok', 'sb']
dumpsed = pickle.dumps(li)
print dumpsed
print type(dumpsed)
loadsed = pickle.loads(dumpsed)
print loadsed
print type(loadsed)
'''

'''
li = ['lilin',11,22,'ok','IT']
pickle.dump(li, open('E:/temp.pk','w'))
result = pickle.load(open('E:/temp.pk','r'))
print result
'''
'''
import json

name_dic = {'name':'lilin' , 'age':21}
result = json.dumps(name_dic)
print result
'''

import re
'''
result1 = re.match('\d+', 'ajfdfds')
result2 = re.search('\d+','jkl;gf;djdfklas;')
if result1:
    print result1, result1.group();
else:
    print 'nothing'
'''
'''
result3 = re.findall('(\d+)\w*(\d+)','adf111ldfsafa333')
result4 = re.search('(\d+)\w*(\d+)','adf111ldfsafa333')
print result3, result4.group()

com = re.compile('(\d+)\w*(\d+)')
print com.findall('adfk111lkdsafjl222f')
'''

ip = '12.23hdf.324.fd.192.168.1.1.2ehjkfd.5'
print re.findall('[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.',ip)

import time

print time.time()
print time.gmtime()
print time.strftime('%Y-%m-%d %H:%M:%S')            #最为重要
print time.strptime('2014-11-11', '%Y-%m-%d')
print time.mktime(time.localtime()) 











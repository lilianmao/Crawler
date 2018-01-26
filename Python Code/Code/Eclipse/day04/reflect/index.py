#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from backend import account

data = raw_input('请输入地址：')
array = data.split('/')

'''
if data == 'account/Login':
    account.Login();
'''
try:
    userspace = __import__('backend.'+array[0])     #导入文件夹
    model = getattr(userspace, array[0])                #导入模块
    func = getattr(model, array[1])
    func()
except ImportError, e:
    print 1, e
    print '自定义404'
except AttributeError, e:
    print 2, e
    print '自定义404'
except Exception, e:
    print 3, e
    print '自定义的404'

else:
    print '没有出错'

finally:
    print '大法师，啊哈'

class MyException(Exception):
    
    def __init__(self, msg):
        self.error = msg
        
    def __str__(self, *args, **kwargs):     #类似于Java的toString方法
        return self.error

obj = MyException('Error')
print obj












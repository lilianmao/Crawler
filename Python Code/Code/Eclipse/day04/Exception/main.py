#!/usr/bin/env python
#_*_ coding:utf-8 _*_

def Validate(name, pwd):
    if name == 'lilin' and pwd == '123569':
        return True
    else:
        return False

try:
    res = Validate('lilin', '123456')
    if res:
        print '登陆成功'
    else:
        #print '登陆失败'
        raise Exception('登录失败')         #登陆异常
except Exception, e:
    print '记录日志到数据库'
    print e
    
    
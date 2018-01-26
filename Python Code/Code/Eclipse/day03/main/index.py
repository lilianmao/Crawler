#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from file import demo
demo.Foo();

name = "lilin"
job = "IT"
print name, job


print __file__
print __doc__

def login(username):
    if username == 'alex':
        return '登陆成功'
    else:
        return '登录失败'

def detail(user):
    print 'Hello，',user
     
if __name__ =='__main__':
    user = raw_input('请输入用户名：')
    result = login(user)
    if result == '登陆成功':
        detail(user)
    else:
        print '没奖金了'
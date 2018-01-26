#!/usr/bin/env python
#_*_ coding:utf-8 _*_
from model.admin import Admin

def main():
    
    user = raw_input('username:')
    pwd = raw_input('password:')
    admin = Admin()
    result = admin.CheckValidate(user, pwd)
    if not result:
        print '用户名和密码错误'    else:
        print '进入后台管理页面'
    

if __name__ == '__main__':
    main()

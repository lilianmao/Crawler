#!/usr/bin/env python
#_*_ coding:utf-8 _*_
import sys
import os
from random import choice

retry_limit = 3;
retry_count = 0;

#文件存入字典。
file_account = open('user_account.txt', 'rb')
user_dict = {}
for item in file_account.readlines():
    user_dict[item.split()[0]] = item.split()[1]

while retry_count < retry_limit:
    username = raw_input('请输入你的用户名：')
    password = raw_input('请输入你的密码：')
    #判断用户名和密码
    if user_dict.has_key(username):
        if user_dict[username] == password:
            print '登陆成功'
            break
        else:
            print '密码输入错误，请重新输入'
    else:
        print '用户名输入有误，请重新输入：'
    retry_count+=1
if retry_count == 3:
    print '对不起！'
    exit;
else:
    print '''欢迎%s'''%username

while True:
    print '1，存钱取钱，借钱还钱'
    print '2，显示'
    print '3，退出'
    
    choice = raw_input('请输入你的选择：')
    if choice == '1':
        print '1，存款 2，取款，3，借款，4还款'
        sel = raw_input('请输入你的选择：')
        money = raw_input('请输入金额：')
        if sel == '1':
            print '存款中'
            for user in file_account.readlines():
                if user == username:
                    user.split()[2]+=money;
                    user.writelines()
        elif sel == '2':
            print '取款'
        elif sel == '3':
            print '借款'
        else:
            print '还款'
    elif choice == '2':
        print '1，显示余额，2，显示账单'
        sel = raw_input('请输入你的选择：')
        if sel == '1':
            print '显示余额'
        else:
            print '显示账单'
    elif choice == '3':
        leave = raw_input('你确定要退出吗？（y/n)')
        if leave == 'y':
            exit
        else:
            continue
    else:
        print '输入有误，请重新输入：'
        continue





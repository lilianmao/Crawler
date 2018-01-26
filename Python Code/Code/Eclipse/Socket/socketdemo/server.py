#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import socket

sk = socket.socket();  #用socket模块创建socket对象。
ip_port = ('127.0.0.1', 9999)
sk.bind(ip_port)
sk.listen(5)

while True:
    conn, address = sk.accept()
    '''result = sk.accept()        #元组类型。
    print result
    print type(result)'''
    conn.send('hello')
    flag = True
    while flag:
        data = conn.recv(1024)
        print data
        conn.send('Okay')
        if data == "exit":
            flag = False;
            conn.send('bye')
    conn.close()
















#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import socket

client = socket.socket()
ip_port = ('127.0.0.1', 9999)
client.connect(ip_port)

while True:
    data = client.recv(1024)
    print data
    client_msg = raw_input('client:')
    client.send(client_msg)
    if client_msg == 'exit':
        break






















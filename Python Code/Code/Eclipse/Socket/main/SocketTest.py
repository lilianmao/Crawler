#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import socket

def handle_request(client):
    buf = client.recv(1024)
    client.send("HTTP/1.1 200 OK\r\n\r\n")
    client.send("Hello zhouzhou")
    
def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.bind(('localhost', 8000))
    sock.listen(5)
    
    while True:
        connection, address = sock.accept()
        handle_request(connection)
        connection.close()
        
if __name__ == '__main__':
    main()
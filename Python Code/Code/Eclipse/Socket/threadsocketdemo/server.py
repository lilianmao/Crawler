#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import SocketServer

'''
继承关系
BaseServer
TCPServer                ThreadingMixIn
ThreadingTCPServer
'''

class MyServer(SocketServer.BaseRequestHandler):
    
    def setup(self):
        pass

    def handle(self):
        print self.request
        print self.client_address
        print self.server
        conn = self.request
        flag = True
        while flag:
            data = conn.recv(1024)
            print data
            conn.send('Okay')
            if data == "exit":
                flag = False;
                conn.send('bye')
            conn.close()
    
    def finish(self):
        pass
    
if __name__ == '__main__':
    server = SocketServer.ThreadingTCPServer(('127.0.0.1', 9999), MyServer)
    server.serve_forever()
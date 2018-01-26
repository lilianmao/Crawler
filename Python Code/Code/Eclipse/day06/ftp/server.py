#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import SocketServer
import os

class MyServer(SocketServer.BaseRequestHandler):
    
    def handle(self):
        
        base_path = 'E:/'
        conn = self.request         #获得连接
        print 'connect...'
        
        while True:
            pre_data = conn.recv(1024)
            #获取请求方法、文件名、文件大小
            cmd, file_name, file_size = pre_data.split('|')
            #已经接受文件的大小
            recv_size = 0
            #上传文件路径的拼接
            file_dir = os.path.join(base_path, file_name)
            f = file(file_dir, 'wb')
            Flag = True
            
            while True:
                #未上传完毕
                if int(file_size) > recv_size:
                    #最多接受1024
                    data = conn.recv(1024)
                    recv_size += len(data)
                #上传完毕，退出循环
                else:
                    recv_size = 0
                    Flag = False;
                    continue
                f.write(data)
            
            print 'upload successed'
            f.close()

instance = SocketServer.ThreadingTCPServer(('127.0.0.1', 9999), MyServer)
instance.serve_forever()
            
            
            
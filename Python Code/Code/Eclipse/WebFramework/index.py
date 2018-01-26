#!/usr/bin/env python
#_*_ coding:utf-8 _*_
import wsgiref
from  wsgiref.simple_server import make_server
from Controller.Account import *
from Controller.Admin import *

url = (
       ('/index/', index),
       ('/login/', login),
    )

def RunServer(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text.html')])
    
    func  = None
    
    #获取URL
    userUrl = environ['PATH_INFO']
    for item in url:
        if item[0] == userUrl:
            func = item[1]
    
    if func:
        result = func()         #使用函数。
    else:
        result = '404'
    
    return result
    '''
    userUrl = environ['PATH_INFO']
    if userUrl == '/index/':
        return '<h1>index</h1>'
    elif userUrl == '/login/':
        return '<h1>login</h1>'
    else:
        return '<h1>404 not found</h1>'
    '''
    return '<h1>Hello Python!</h1>'

if __name__ == '__main__':
    httpd = make_server('', 8000, RunServer)
    print "Serving HTTP on port 8000..."
    httpd.serve_forever()
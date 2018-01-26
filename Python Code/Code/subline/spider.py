# _*_coding:utf-8 _*_

import urllib2

url = 'http://blog.csdn.net/IAccepted/article/category/2281689'

my_headers = {
            'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',
            'GET': url,
            'Host':'blog.csdn.net',
            'Referer':'http://blog.csdn.net/iaccepted/article/details/18821039'
            }

req = urllib2.Request(url, headers=my_headers)  #创建request对象

html = urllib2.urlopen(req)
print html.read()
print req.headers.items()








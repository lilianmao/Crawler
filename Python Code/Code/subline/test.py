# _*_ coding:utf-8 _*_

import urllib

#print help(urllib.urlopen)	#GET/POST

url = 'http://www.youku.com/'

html = urllib.urlopen(url)

print html.read().decode('gbk','ignore').encode('utf-8')
print html.info()
print html.getcode()

'''
网页状态码：
200正常访问 301重定向 302临时重定向 404网页不存在 403禁止访问 500服务器无响应

详情参考HTTP权威指南，WEB开发必备
'''

print html.geturl()

#网页抓取，下载网页

urllib.urlretrieve(url, "E:\\Python Code\\Code\\web collect\\abc.html")


info = urllib.urlopen(url).info()
print info.getparam('charset')




# _*_ coding:utf-8 _*_

import urllib
import chardet

def automatic_detect(url):
    '''doc'''
    content = urllib.urlopen(url).read()
    result = chardet.detect(content)        #检测编码

    print result

    encoding = result['encoding']
    return encoding

urls = ['http://www.163.com',
       'http://www.baidu.com']
for url in urls:
    print url, automatic_detect(url)
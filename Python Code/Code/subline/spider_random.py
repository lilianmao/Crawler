# _*_coding:utf-8 _*_

import urllib2
import random

url = 'http://blog.csdn.net/IAccepted/article/category/2281689'

my_headers = [
    'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',
    'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50',
    'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0',
    'Mozilla/5.0 (Windows NT 6.1; rv:2.0.1) Gecko/20100101 Firefox/4.0.1'
]

def get_content(url, headers):
    '''
    @获取403禁止访问网页
    '''
    random_header = random.choice(headers)      #从headers随机挑选一个

    #print random_header

    req = urllib2.Request(url)
    req.add_header('User-Agent', random_header)
    req.add_header('Host', 'blog.csdn.net')
    req.add_header('GET', url)
    req.add_header('Referer', 'http://blog.csdn.net/iaccepted/article/details/18821039')

    content = urllib2.urlopen(req).read()
    return content


print get_content(url, my_headers)






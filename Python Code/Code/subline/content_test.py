#-*- coding:utf8 -*-

import urllib

url = 'http://www.cxjhm.com/thread-74177-1-1.html'

html = urllib.urlopen(url)

print html.read()
print html.getcode()
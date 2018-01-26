# _*_ coding:utf-8 _*_

import urllib


def callback(a, b, c):
    '''
        a:到目前为止传递的参数块数量
        b:每个数据块的大小，单位是字节byte
        c:远程文件的大小（有时候返回-1）
    '''
    down_process = 100.0*a*b/c

    if down_process > 100:
        down_process = 100
    print '%.2f%%' %down_process,

    print a, b, c


url = 'http://www.iplaypython.com'
url2 = 'http://www.python.org'
local = "E:\\Python Code\\Code\\web collect\\abc.html"

urllib.urlretrieve(url2, local, callback)


html = urllib.urlopen(url);
code = html.getcode()

if code == 200:
    print '网页正常'
    #print html.read()       #读取网页内容
    print html.info()       #读取网页头部
else:
    print '网页出问题'

'''
urlretrieve()
1，传入网址
2，本地路径+文件名
3，一个函数的调用，可以任意定义一个函数的行为，但是一定保证函数有三个参数
    （1）到目前为止传递的参数块数量
    （2）每个数据块的大小，单位是字节byte
    （3）远程文件的大小（有时候返回-1）
'''
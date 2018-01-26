# _*_ coding:utf-8 _*_

import re
import urllib2
import urllib

def get_content(url):
    '''
    获取网页
    '''

    html = urllib2.urlopen(url)
    content = html.read()
    html.close()

    return content


def get_images(info):
    '''
    <img class="BDE_Image" src="http://imgsrc.baidu.com/forum/w%3D580/sign=6abe3d48cf95d143da76e42b43f18296/0e4821d12f2eb938b349abb9d2628535e4dd6f80.jpg"
    changedsize="true" width="560" height="314" size="47982">
    '''
    regex = r'class="BDE_Image" src="(.+?\.jpg)"'           #.是匹配换行符之外的单个字符 +？重复一次或者更多次，尽量少重复。
    pat = re.compile(regex)                                 #将正则表达式编译成模式的对象， 提高效率。
    image_codes = re.findall(pat, info)

    print image_codes,len(image_codes)

    count = 0;
    for image_url in image_codes:
        print image_url

        urllib.urlretrieve(image_url, '%s.jpg' %count)
        count += 1


info = get_content('http://tieba.baidu.com/p/4418345139')

print get_images(info)















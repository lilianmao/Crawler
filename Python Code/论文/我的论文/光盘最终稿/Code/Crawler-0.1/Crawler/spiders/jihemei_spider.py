# -*- coding:utf-8 -*-

from scrapy.spider import Spider
from scrapy.selector import Selector
from Crawler.items import PostItem
from bs4 import BeautifulSoup

import scrapy
import urllib2
import random

# 预备用头部
my_headers = [
    'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',
    'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50',
    'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0',
    'Mozilla/5.0 (Windows NT 6.1; rv:2.0.1) Gecko/20100101 Firefox/4.0.1'
]


# 模拟头部
def get_content(url, headers):
    '''
    @获取403禁止访问网页
    '''
    random_header = random.choice(headers)  # 从传入参数headers随机挑选一个

    # print random_header

    req = urllib2.Request(url)
    req.add_header('User-Agent', random_header)
    req.add_header('Host', 'www.cxjhm.com')
    req.add_header('GET', url)
    req.add_header('Referer', 'http://www.cxjhm.com/forum.php')

    content = urllib2.urlopen(req).read()
    return content

# 去掉HTML代码
def delete_html(str):
    # 先去除第一个br前面的HTML代码
    index1 = str.index('<br>')
    index2 = len(str)
    str = str[index1+4:index2]
    # 删除所有的br和font
    str = str.replace('<br>', '')
    str = str.replace('</font>', '')

    return str

class JihemeiSpider(Spider):
    name = "jihemei"
    allowed_domains = ["cxjhm.com"]  # 该域名范围内爬去
    start_urls = [
        # "http://www.cxjhm.com/forum-46-1.html"  # 起始地址
    ]

    def __init__(self):
        # self.start_urls.append(url)
        with open("E:\Python Code\Code\Crawler-0.1\urls", "r") as f:
            self.start_urls.append(f.readline())

    # 入口方法
    def parse(self, response):
        # 爬取底部网址
        for href in response.css("#fd_page_bottom a::attr('href')"):  # 抓取button所有的链接
            url = response.urljoin(href.extract())                    # 加入队列
            yield scrapy.Request(url, callback=self.parse)            # 再次调用该函数

        # 开始解析爬取的网页
        sel = Selector(response)
        sites = sel.css('.bm_c tr')

        # 选取文章链接，调用parse_content_page方法
        for site in sites:
            link = site.css('.s.xst::attr(href)').extract_first()  # 选择href
            if link:
                link = "http://www.cxjhm.com/" + link
                yield scrapy.Request(link, callback=self.parse_content_page)

    # 爬取指定网页
    def parse_content_page(self, response):
        item = PostItem()

        item['title'] = response.css('#thread_subject::text').extract_first()
        item['postMan'] = response.css('.authi .xw1::text').extract_first()

        time = response.css('.plhin .authi em span::attr(title)').extract_first()
        if not time:
            time = response.css('.plhin .authi em::text').extract_first().split(' ')[1]  # 按空格分隔，取第二个。
        else:
            time = time.split(' ')[0]
        item['firstTime'] = time

        readCount, replyCount = [int(count) for count in response.css('.xi1::text').extract()]
        item['readCount'] = readCount
        item['replyCount'] = replyCount

        # 先爬取正文模块，去除回帖模块，获取正文，用空字符串连接所有的元组。
        content = ''.join(response.css('.plhin')[0].css('.t_f').extract())
        link = response.url                     # response的属性，dir(response)
        if 'font' in content:
            html = get_content(link, my_headers)
            soup = BeautifulSoup(html)
            item['content'] = soup.find(attrs={'class': 't_f'}).get_text()
        else:
            item['content'] = ''.join(response.css('.plhin')[0].css('.t_f::text').extract())
        item['link'] = link

        yield item

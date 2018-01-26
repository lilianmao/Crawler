# -*- coding:utf-8 -*-

from scrapy.spider import Spider
from scrapy.selector import Selector
from Crawler.items import PostItem
from bs4 import BeautifulSoup

import scrapy
import urllib
import urllib2
import random
import re
from Crawler.settings import url

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
    random_header = random.choice(headers)  # 从headers随机挑选一个

    # print random_header

    req = urllib2.Request(url)
    req.add_header('User-Agent', random_header)
    req.add_header('Host', 'www.cxjhm.com')
    req.add_header('GET', url)
    req.add_header('Referer', 'http://www.cxjhm.com/forum.php')

    content = urllib2.urlopen(req).read()
    return content


class JihemeiSpider(Spider):
    name = "jihemei"
    allowed_domains = ["cxjhm.com"]  # 该域名范围内爬去
    start_urls = [
        # "http://www.cxjhm.com/forum-46-1.html"  # 起始地址
    ]

    def __init__(self):
        # self.start_urls.append(url)
        with open("E:\Python Code\Code\Crawler\urls", "r") as f:
            self.start_urls.append(f.readline())

    def parse(self, response):

        # 选择网址
        for href in response.css("#fd_page_bottom a::attr('href')"):  # 抓取button所有的链接
            url = response.urljoin(href.extract())  # 加入队列

            # m = re.search(r'www\.cxjhm\.com/forum\-\d+\-(\d+)\.html', url)
            # page = m.group(1)
            # if int(page) <= 3:  # page是字符串，装换为int
            #     with open('url.log', 'a') as f:
            #         f.write(url + '\n')
            yield scrapy.Request(url, callback=self.parse)  # 再次调用该函数

        # 首先选择大范围
        sel = Selector(response)
        sites = sel.css('.bm_c tr')

        for site in sites:
            item = PostItem()

            item['title'] = site.css('.s.xst::text').extract_first()  # 取出其中的文本,q取出第一个
            item['postMan'] = site.css('cite a::text').extract_first()

            # 先选择第一个by，防止第二个by干扰。
            cols = site.css('.by')
            col = cols[0]

            # 专门处理时间
            print '---------------------', col is None
            if col != None:
                time = col.css('em span::text').extract_first()
                if time != None:
                    time_utf8 = time.encode("utf-8")
                    if time_utf8.find("天") != -1:
                        item['firstTime'] = col.css('em span::attr(title)').extract_first()
                    elif time_utf8.find("小时") != -1:
                        item['firstTime'] = col.css('em span::attr(title)').extract_first()
                    elif time_utf8.find("分钟") != -1:
                        item['firstTime'] = col.css('em span::attr(title)').extract_first()
                    else:
                        item['firstTime'] = col.css('em span::text').extract_first()

            item['replyCount'] = site.css('.xi2::text').extract_first()
            item['readCount'] = site.css('.num em::text').extract_first()
            item['link'] = site.css('.s.xst::attr(href)').extract_first()  # 选择href

            # 针对该链接爬取content
            if item['link']:
                link = "http://www.cxjhm.com/" + item['link']
                with open('url.log', 'a') as f:
                    f.write(link + '\n')
                html = get_content(link, my_headers)
                soup = BeautifulSoup(html)
                content = soup.find(attrs={'class': 't_f'}).get_text()  # 仅需要文本
                # content.replace(" ","&nbsp;")
                # content = content.replace("\n","<br/>")
                # content = '<pre>'+content+'</pre>'
                item['content'] = content

            yield item

from scrapy_redis.spiders import RedisSpider

class IEEESpider(RedisSpider):
    name = 'ieee'

    def parse(self, response):
        path = response.url.split('/')[-1].split('?')[0]
        with open(path, 'wb') as f:
            f.write(response.body)
            print('writing files ... done')

# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import sqlalchemy

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, DateTime
from sqlalchemy.orm import sessionmaker
from sqlalchemy.sql import text
from sqlalchemy.exc import IntegrityError

Base = declarative_base()
# 初始化数据库连接       防止中文乱码
engine = create_engine('mysql://root:1234@localhost/spider?charset=utf8')


class Post(Base):
    __tablename__ = 'jihemei'  # 寻找table

    id = Column(Integer, primary_key=True)
    postMan = Column(String)
    firstTime = Column(DateTime)
    title = Column(String)
    content = Column(String)
    readCount = Column(Integer)
    replyCount = Column(Integer)
    link = Column(String)


class CrawlerPipeline(object):
    def process_item(self, item, spider):
        # 创建Session类型
        DBSession = sessionmaker(bind=engine)
        # 创建session对象
        session = DBSession()

        # 从item中获取帖子的属性，创建Post对象。
        admin = Post(postMan=item['postMan'],
                     firstTime=item['firstTime'],
                     title=item['title'],
                     content=item['content'],
                     readCount=item['readCount'],
                     replyCount=item['replyCount'],
                     link=item['link'])

        # 去掉重复
        flag = 0  # 标记flag，初始值为0，找到相同的帖子置1。
        items = session.query(Post).all()  # query方法需要加Post
        for item in items:  # 在已经存在的数据库里面查找当前帖子。
            if item.link == admin.link:
                flag = 1

        if flag == 0:
            try:
                session.add(admin)  # 加入数据库
                session.commit()
            except IntegrityError, e:
                session.rollback()

            session.close()  # 提交并关闭

        return item


def deleteWord(id):
    sql = "delete from jihemei WHERE id = :Id"
    engine.execute(text(sql), Id=id)

# deleteWord(16)

# -*- coding:utf-8 -*-
import sqlalchemy

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, DateTime
from sqlalchemy.orm import sessionmaker
from sqlalchemy.sql import text
from sqlalchemy import desc

# 创建对象的基类
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
    '''
    def __init__(self, postMan, firstTime, title, content, readCount, replyCount, link):
        self.postMan = postMan
        self.firstTime = firstTime
        self.title = title
        self.content = content
        self.readCount = readCount
        self.replyCount = replyCount
        self.link = link
    '''


# 获取月份，转化为int返回。
def getMonth(datetime):
    return int(str(datetime)[5:7])


# 获取所有的item
def getItem():
    # 创建session对象
    DBSession = sessionmaker(bind=engine)
    session = DBSession()

    sql = text("select * from jihemei ORDER BY firstTime desc")

    # 获取所有的item                  这里使用字典的方式绑定参数
    items = session.execute(sql).fetchall()

    session.close()

    return items

# 按照月份获取
def getCount_byMonth():
    DBSession = sessionmaker(bind=engine)
    session = DBSession()

    items = session.query(Post).all()

    # 字典-按照key-value存储
    data = {}
    for item in items:
        month = getMonth(item.firstTime)
        if data.get(month):
            data[month] = data[month] + 1
        else:
            data[month] = 1

    return data


# 按照月份获取——搜索版
def getCount_byMonth_byContent(content):
    sql = "select * from jihemei where title like :Content"

    items = engine.execute(text(sql), Content='%' + content + '%')

    data = {}  # 字典
    for item in items:
        month = getMonth(item.firstTime)
        if data.get(month):
            data[month] = data[month] + 1
        else:
            data[month] = 1

    return data


# 按照用户获取
def getCount_byUser():
    DBSession = sessionmaker(bind=engine)
    session = DBSession()

    items = session.query(Post).all()

    session.close()


# 按照标题搜索
def searchTitle(content):
    # 创建session对象
    DBSession = sessionmaker(bind=engine)
    session = DBSession()

    sql = text("select * from jihemei where title like :Title")

    # 获取所有的item                  这里使用字典的方式绑定参数
    items = session.execute(sql, {'Title': '%' + content + '%'}).fetchall()

    session.close()

    return items


# 按照内容搜索
def searchContent(content):
    sql = "select * from jihemei where content like :Content"

    items = engine.execute(text(sql), Content='%' + content + '%')

    return items


# 按照id搜索
def getUser_byId(id):
    sql = "select * from jihemei where id = :Id"
    sql_enter = "UPDATE jihemei SET content = REPLACE(content, '\n', '<br\\>');"

    item = engine.execute(text(sql), Id=int(id)).fetchone()  # fetchone() 去一个数据。
    # item.content = item.content.replace("\n","<br/>")
    # engine.execute(text(sql))

    return item


# 按照热词搜索
def getWord():
    sql = "select * from Hot_Words"

    words = engine.execute(text(sql))

    return words


# 添加热词
def addWord(word):
    sql = "insert into Hot_Words(word) values(:Word)"
    items = engine.execute(text(sql), Word=word)


# 删除热词
def deleteWord(word):
    sql = "delete from Hot_Words WHERE word = :Word"
    engine.execute(text(sql), Word=word)


# 清空数据库
def emptySql():
    sql = "truncate table jihemei";
    engine.execute(text(sql));

getItem()
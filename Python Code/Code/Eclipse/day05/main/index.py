#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import MySQLdb


conn = MySQLdb.connect(host = '127.0.0.1', user = 'root', passwd = '1234', db = 'sportssystem')
cur = conn.cursor()         #游标
cur = conn.cursor(cursorclass = MySQLdb.cursors.DictCursor)     #根据字典获取数据

reCount = cur.execute('select * from admin')

#sql_insert = "insert into admin (admin_name, admin_password, phone) values(%s, %s, %s)";
#sql_delete = "delete from admin where admin_name = %s"
#sql_update = "update admin set admin_password = %s where admin_name = %s"
#params = ('222222','zhaiyu')

li = [
      ('zhouzhou', '111111', '111111'),
      ('nannan', '222222' ,'222222'),
]
#reCount = cur.executemany('insert into admin(admin_name, admin_password, phone) values(%s, %s, %s)',li)

#reCount = cur.execute(sql_update, params)
#data = cur.fetchall()
data = cur.fetchone()
print data
cur.scroll(-1, mode='relative')
data = cur.fetchone()
print cur.lastrowid

conn.commit()               #提交commit

print reCount
print data


cur.close()
conn.close()









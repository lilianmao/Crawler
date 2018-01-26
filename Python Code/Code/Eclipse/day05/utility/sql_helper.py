#!/usr/bin/env python
#_*_ coding:utf-8 _*_

import MySQLdb
import conf

class MySqlHelper:
    
    def __init__(self):
        self.__conn_dict = conf.conn_dict
                                    #{'host' : 127.0.0.1}
    
    def Get_Dict(self, sql, params):
        
        conn = MySQLdb.connect(host='127.0.0.1', user = 'root', password = '1234', db = 'sportssystem')
        cur = conn.cursor(cursorclass = MySQLdb.cursors.DictCursor)
        
        reCount = cur.execute('select * from admin')
        data = cur.fetchall()
        
        cur.close()
        conn.close()
        
        return data
    
    def Get_One(self, sql, params):
        
        conn = MySQLdb.connect(**self.__conn_dict)          #字典转字符串——加*意思是字典内容均传入。
        cur = conn.cursor(cursorclass = MySQLdb.cursors.DictCursor)
        
        reCount = cur.execute(sql, params)
        data = cur.fetchone()
        
        cur.close()
        conn.close()
        
        return data
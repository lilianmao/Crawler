#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from utility.sql_helper import MySqlHelper

class Admin(object):
    
    def __init__(self):
        self.__helper = MySqlHelper()
        
    def Get_One(self, id):
        sql = "select * from admin where id = %s"
        params = (id,)
        return self.__helper.Get_One(sql, params)
    
    def CheckValidate(self, username, password):
        sql = "select * from admin where admin_name = %s and admin_password = %s"
        params = (username, password,)
        return self.__helper.Get_One(sql, params)
    
    
    
    
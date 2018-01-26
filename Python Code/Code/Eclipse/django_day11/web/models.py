#_*_ coding: UTF-8 _*_
from django.db import models
from django.db.models.fields.related import OneToOneField

# Create your models here.

class UserType(models.Model):
    
    name = models.CharField(max_length=50)


class UserInfo(models.Model):
    
    username = models.CharField(max_length=50)
    
    password = models.CharField(max_length=50)
    
    Gender = models.BooleanField(default = False)
    
    Age = models.IntegerField(default = 19)
    
    memo = models.IntegerField(default = '***')
    
    CreateDate = models.DateField(default = '2015-02-03 16:00')

    typeId = models.ForeignKey(UserType)            #必须定义在前面。
    
    
class Group(models.Model):
    
    Name = models.CharField(max_length=50)
    
class User(models.Model):
    
    Name = models.CharField(max_length=50)
    
    Email = models.CharField(max_length=50)
    
    group_relation = models.ManyToManyField('Group')        #多对多
   # OneToOneField    一对一
    
class Args(models.Model):
    
    name = models.CharField(max_length=20, null=True)
    
    not_name = models.CharField(max_length=20, null=False)
    

class Asset(models.Model):
    
    hostname = models.CharField(max_length=20)
    
    create_date = models.DateTimeField(auto_now_add = True)
    
    update = models.DateTimeField(auto_now = True, error_messages={"invalid":'日期格式错误'}) #自动以错误提示
    

class Temp(models.Model):
    
    GENDER_CHOICE = (
                     ('M', 'Male'),
                     ('F', "Female"),
    )
    gender = models.CharField(max_length=2, choices = GENDER_CHOICE)        #存放在内存。















    
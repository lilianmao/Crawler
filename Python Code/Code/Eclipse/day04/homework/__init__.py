#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from story import story
from Person import Person

'''
Created on 2016-01-21
 @author: lilin
 '''
if __name__ == '__main__':
    s = story()
    p = Person('李林',21,'male');
    p.talk('为人类福利而劳动')
    
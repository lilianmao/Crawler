#!/usr/bin/env python
#_*_ coding:utf-8 _*_

str1 = 'demo'
str2 = 'Foo'

module = __import__(str1)
func = getattr(module, str2)

func()
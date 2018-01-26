#!/usr/bin/env python
#_*_ coding:utf-8 _*_

from django import forms

class RegisterForm(forms.Form):
    username = forms.CharField()
    email = forms.EmailField(required=True, error_messages={'invalid':'邮箱格式错误'})
#_*_ coding:utf-8 _*_

from django.conf.urls import patterns, include, url
from django.contrib import admin

#from web.views import index, login, list
# Uncomment the next two lines to enable the ad:
# from django.contrib import ad
# ad.autodiscover()

def active(request):
    #获取url
    #第一：APP名字
    #第二：文件名
    #第三：函数名
    pass

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'django_day11.views.home', name='home'),
    # url(r'^django_day11/', include('django_day11.foo.urls')),

    # Uncomment the ad/doc line below to enable ad documentation:
    # url(r'^ad/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the ad:
    # url(r'^admin/', include(ad.site.urls)),
    
    #url对应文件（分发）
    url(r'^web/', include('web.urls')),
    
    #所有的url均交给active。
    #url(r'^', active)

)

#_*_ coding:utf-8 _*_

from django.conf.urls import patterns, include, url
from django.contrib import admin

from web.views import index, list, Add, Delete, Update, Get, AssetList, Login, Register
# Uncomment the next two lines to enable the ad:
# from django.contrib import ad
# ad.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'django_day11.views.home', name='home'),
    # url(r'^django_day11/', include('django_day11.foo.urls')),

    # Uncomment the ad/doc line below to enable ad documentation:
    # url(r'^ad/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the ad:
    # url(r'^admin/', include(ad.site.urls)),
    
    #url对应函数
    #url(r'^index/', index),
    #url(r'^login', login),
    #url(r'^list/(?P<name>\d*)/(?P<id>\d*)/$', list),
    #url(r'^list/(?P<name>\d*)/$', list, {'id': 1111}),                #默认参数，$的用处：默认添加 '/'
    
    url(r'^add/(?P<name>\d*)/$', Add),
    url(r'^delete/(?P<id>\d*)/$', Delete),
    url(r'^update/(?P<id>\d*)/(?P<name>\w*)/$', Update),
    url(r'^get/(?P<name>\w*)/$', Get),
    
    url(r'assetlist/$', AssetList),
    url(r'^login/$', Login),
    url(r'^register/$', Register),
)

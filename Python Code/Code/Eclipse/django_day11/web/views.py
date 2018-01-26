#_*_ coding:utf-8 _*_
# Create your views here.
from django.shortcuts import render
from django.shortcuts import render_to_response
from django.http.response import HttpResponse
from web.models import Asset, UserInfo
from web.forms import RegisterForm

def index(request):
    return HttpResponse('index')

def list(request, name, id):
    print name, id
    return HttpResponse('list')


def Add(request, name):
    
    obj = Asset.objects.create(hostname=name)
    
    #print obj.query
    
    return HttpResponse('ok')

def Delete(request, id):
    
    Asset.objects.get(id=id).delete()
    
    return HttpResponse('ok')

def Update(request, id, name):
    '''
    obj = Asset.objects.get(id=id)  #找到该数据   
    obj.hostname = name;
    obj.save()
    '''
    Asset.objects.filter(id__gt = id).update(hostname=name)  #greater than两个下划线
    
    return HttpResponse('ok')

def Get(request, name):
    
    assetList = Asset.objects.filter(hostname__contains=name)
    for item in assetList:
        print item.id
        
    alldata = Asset.objects.all()[0:2]      #分页使用
    print alldata
    
    SortData = Asset.objects.all().order_by('-id')  #倒序
    
    data = Asset.objects.all().values('id')#取出指定的数据
    print data
    
    return HttpResponse('ok')

def AssetList(request):
    
    asset_list = Asset.objects.all()
    
    return render_to_response('assetlist.html', {'data':asset_list, 'user':'alex'})

def Login(request):
    
    if request.method == 'POST':
        user = request.POST.get('username', None)       #没有获取到的话，返回None
        pwd = request.POST.get('password', None)
        print user, pwd
        
        result = UserInfo.objects.filter(username=user, password=pwd).count()
        if result == 1:
            return HttpResponse('登陆成功')
        else:
            return render_to_response('login.html', {'status':'用户名和密码错误'})
        return render_to_response('login.html')
    else:
        return render_to_response('login.html')
    
def Register(request):
    
    registerForm = RegisterForm()
    
    if request.method == 'POST':
        
        form = RegisterForm(request.POST)       #获取数据，封装
        if form.is_valid():
            data = form.cleaned_data
            print data
        else:
            temp = form.errors.as_data()
            print temp['email'][0].messages[0]      #特别注意
    
    return render_to_response('register.html', {'form':registerForm})
    

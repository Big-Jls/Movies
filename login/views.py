from django.shortcuts import render, redirect

from index.models import NormalUser


# Create your views here.
def login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        nu = NormalUser.objects.filter(username=username)
        if nu:
            if nu[0].check_password(password):
                request.session['avatar'] = nu[0].avatar.url
                request.session['username'] = nu[0].username
                request.session['user_id'] = nu[0].id
                return redirect('/home/')
            else:
                return render(request, 'login.html', {'error': '密码错误请重新尝试'})
        else:
            return render(request, 'login.html', {'error': '用户不存在请检查用户名'})
    return render(request, 'login.html')


def register(request):
    if request.method == "POST":
        username = request.POST.get("username")
        nu = NormalUser.objects.filter(username=username)
        if nu:
            return render(request, 'register.html', {"error": "用户已存在，请直接登录"})
        else:
            password = request.POST.get("password")
            repeat_password = request.POST.get("password2")
            if password != repeat_password:
                return render(request, 'register.html', {"error": "两次输入的密码不一致，请重新输入"})
            else:
                NormalUser.objects.create_user(username=username,
                                               password=password)
                return redirect('/login/')

    return render(request, "register.html")

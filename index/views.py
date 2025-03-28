from django.shortcuts import render, redirect
from .models import Movies, Category, NormalUser, Content
import random
import jieba
import time
from django.db.models import Q


# Create your views here.

def index(request):
    categories = Category.objects.all()
    category_movies = {}
    for category in categories:
        category_movies[category] = Movies.objects.filter(category=category)[:5]

    mv = Movies.objects.all()
    random_mv = random.choice(mv)
    return render(request, 'index.html',
                  {"mv": mv, "categories": categories, 'random_mv': random_mv, 'category_movies': category_movies})


def home(request):
    avatar = request.session.get('avatar')
    username = request.session.get('username')
    user_id = request.session.get('user_id')
    categories = Category.objects.all()
    category_movies = {}
    for category in categories:
        category_movies[category] = Movies.objects.filter(category=category)[:5]

    mv = Movies.objects.all()
    random_mv = random.choice(mv)
    context = {
        "username": username,
        "avatar": avatar,
        "user_id": user_id,
        "mv": mv,
        "categories": categories,
        "random_mv": random_mv,
        "category_movies": category_movies,
        "searched": False  # 添加标志来判断是否进行了搜索
    }

    if request.method == 'POST':
        keywords = request.POST.get('keywords')
        if keywords:
            keyword_list = jieba.lcut(keywords)
            # 构建 Q 对象
            query = Q()
            for keyword in keyword_list:
                query |= Q(title__icontains=keyword) | Q(info__icontains=keyword)
            # 执行数据库查询
            filter_mv = Movies.objects.filter(query)
            context["filter_mv"] = filter_mv
            context["searched"] = True  # 设置标志为 True

    return render(request, 'home.html', context=context)


def about(request, id):
    nu = NormalUser.objects.filter(id=id)
    if nu.exists():
        user = nu.first()
        username = user.username
        avatar = user.avatar
        email = user.email
        id = user.id
        password = user.password
        context = {
            'id': id,
            "username": username,
            "avatar": avatar,
            "email": email,
            "password": password
        }

        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            password2 = request.POST.get('password2')
            email = request.POST.get('email')
            avatar = request.FILES.get('avatar')  # 处理文件上传

            user.username = username
            if password == password2:
                user.set_password(password)
            else:
                message = '两次密码不一致'
                context['message'] = message
                return render(request, 'about.html', context=context)
            user.email = email
            if avatar:
                user.avatar = avatar
            user.save()
            message = '已修改'
            context['message'] = message
            return redirect(f'/home/about/{id}')

        return render(request, 'about.html', context=context)
    message = '未知用户'
    return render(request, 'about.html', {"message": message})


def details(request, id):
    avatar = request.session.get('avatar')
    username = request.session.get('username')
    user_id = request.session.get('user_id')
    text = Content.objects.filter(movies_id=id)
    mv = Movies.objects.filter(id=id).first()
    context = {
        "username": username,
        "avatar": avatar,
        "user_id": user_id,
        "text": text,
        "mv": mv,
        "text_status": False
    }
    if text:
        context["text_status"] = True

    if request.method == 'POST':
        formatted_time = time.strftime("%Y-%m-%d %H:%M:%S")
        texts = request.POST.get('texts')
        user = NormalUser.objects.get(username=username)
        Content.objects.create(user_name=user, content=texts, movies=mv, timestamp=formatted_time)
        return redirect(f'/home/details/{id}')
    return render(request, 'details.html', context)


def movies(request):
    return render(request, 'movies.html')
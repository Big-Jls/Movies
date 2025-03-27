from django.contrib.auth.models import AbstractUser
from django.db import models
from django_ckeditor_5.fields import CKEditor5Field


# Create your models here.

class NormalUser(AbstractUser):
    avatar = models.ImageField(default='default.jpg', verbose_name='头像')

    def __str__(self):
        return self.username


class Actor(models.Model):
    name = models.CharField(max_length=10, verbose_name='姓名', null=False)
    avatar = models.ImageField(default='default.jpg', verbose_name='头像')

    def __str__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=10, verbose_name='分类', unique=True, null=False)

    def __str__(self):
        return self.name


class Movies(models.Model):
    category = models.ManyToManyField('Category', related_name='category',default='未定义')
    title = models.CharField(max_length=50, verbose_name='电影名字', null=False, blank=True, unique=True)
    author = models.ManyToManyField('Actor', verbose_name='导演', related_name='author')
    release_date = models.DateField(verbose_name='上映时间', null=False, default='2002-3-11')
    rating = models.FloatField(verbose_name='评分', default=0.0)
    actor = models.ManyToManyField('Actor', verbose_name='演员', related_name='actor')
    logo = models.ImageField(default='mv_default.png', verbose_name='封面', null=False)
    info = models.TextField(verbose_name='电影简介')

    def __str__(self):
        return self.title


class Content(models.Model):
    user_name = models.ForeignKey(NormalUser, verbose_name='用户', on_delete=models.CASCADE, related_name='user_name',
                                  null=True)
    content = CKEditor5Field('Text', config_name='extends', null=False)
    timestamp = models.DateTimeField(auto_now_add=True, verbose_name='timestamp')
    movies = models.ForeignKey(Movies, verbose_name='电影', on_delete=models.CASCADE, related_name='movie')

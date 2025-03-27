from django.contrib import admin
from django.urls import path

from .views import login, register

app_name = 'login'

urlpatterns = [
    path('',login),
    path('register/',register)
]
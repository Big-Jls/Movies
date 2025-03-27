from login.views import register
from .views import index, home, about, details
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

app_name = 'index'

urlpatterns = [
    # path('admin/', admin.site.urls),
    path('',index),
    path('home/',home),
    path('home/about/<int:id>',about),
    path('home/details/<int:id>',details,name='details')
]


# urlpatterns += [
#     path("ckeditor5/", include('django_ckeditor_5.urls')),
# ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
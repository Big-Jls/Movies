from django.contrib import admin

from .models import Movies, NormalUser, Actor, Content, Category


# Register your models here.
@admin.register(Movies)
class MovieAdmin(admin.ModelAdmin):
    list_display = ('title', 'get_author', 'get_actor', 'rating', 'release_date')
    # 修改 search_fields 为实际的字段
    search_fields = ('title', 'author__name', 'actor__name', 'release_date')
    list_filter = ('rating', 'author', 'actor', 'release_date')
    list_per_page = 10

    def get_author(self, obj):
        # 修改为访问 obj.author.all()
        author_names = []
        for author in obj.author.all():
            if author.name:
                author_names.append(author.name)
            else:
                author_names.append("未知导演")
        return ', '.join(author_names) if author_names else "未知导演"

    get_author.short_description = '相关导演'

    def get_actor(self, obj):
        # 修改为访问 obj.actor.all()
        actor_names = []
        for actor in obj.actor.all():
            if actor.name:
                actor_names.append(actor.name)
            else:
                actor_names.append("未知演员")
        return ', '.join(actor_names) if actor_names else "未知演员"

    get_actor.short_description = '相关演员'


@admin.register(NormalUser)
class NormalUserAdmin(admin.ModelAdmin):
    list_display = ('username', 'is_active', 'last_login')
    search_fields = ('username', 'is_active', 'last_login')
    list_filter = ('is_active',)
    list_per_page = 10


@admin.register(Actor)
class ActorAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ('name',)
    list_filter = ('name',)
    list_per_page = 10


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ('name',)
    list_filter = ('name',)
    list_per_page = 10


@admin.register(Content)
class ContentAdmin(admin.ModelAdmin):
    def get_user_name(self, obj):
        return obj.user_name.username if obj.user_name else "未知用户"
    get_user_name.short_description = '用户'

    def get_movie_title(self, obj):
        return obj.movies.title if obj.movies else "未知电影"
    get_movie_title.short_description = '电影'

    list_display = ('get_user_name', 'get_movie_title', 'content')
    search_fields = ('user_name__username', 'movies__title')
    list_filter = ('user_name',)
    list_per_page = 10
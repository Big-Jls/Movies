# 应用目录/templatetags/custom_filters.py
from django import template

register = template.Library()


@register.filter
def times(value):
    return range(int(value))


@register.filter
def get_item(dictionary, key):
    return dictionary.get(key)

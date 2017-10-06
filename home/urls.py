from django.conf.urls import url
from django.conf import settings

from . import views

app_name='home'

urlpatterns = [
    url(r'^$', views.index, name='index'),
]
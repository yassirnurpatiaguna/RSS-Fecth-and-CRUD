from django.contrib import admin
from django.urls import path, include
from . import views
from .views import *

# path url 
urlpatterns = [
    path('accounts/', include('django.contrib.auth.urls')),
    path('', views.home),
    path('news_list/', views.NewsListView.as_view(), name='news_list'),
    path('news/create/', views.NewsCreateView.as_view(), name='news_create'),
    path('news/<int:pk>/', views.NewsDetailView.as_view(), name='news_detail'),
    path('news/<int:pk>/update/', views.NewsUpdateView.as_view(), name='news_update'),
    path('news/<int:pk>/delete/', views.NewsDeleteView.as_view(), name='news_delete'),
    path('home', HomePageView.as_view(), name='home'),
]
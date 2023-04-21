from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView, DetailView, UpdateView, DeleteView, CreateView,TemplateView
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from .models import News
from django.db.models import Q 

# Create your views here.
# @login_required

# Untuk merender halaman awal
def home(request):
    return render(request, 'admin/home.html')

# untuk menghasilkan list berita
class NewsListView(LoginRequiredMixin, ListView):
    model = News
    context_object_name = 'newsList'

# untuk melihat view detail dari list
class NewsDetailView(LoginRequiredMixin, DetailView):
    model = News
    context_object_name = 'news'

# untuk mengupdate data 
class NewsUpdateView(LoginRequiredMixin, UpdateView):
    model = News
    fields =  ['title', 'pubDate', 'description', 'link']
    success_url = '/news_list'
    extra_context = {
        'title': 'Edit News'
    }

    def form_valid(self, form):
        return super().form_valid(form)
    
    def get_context_data(self, *args, **kwargs):

        kwargs.update(self.extra_context)
        return super().get_context_data(*args, **kwargs)

# untuk menghapus data
class NewsDeleteView(LoginRequiredMixin, DeleteView):
    model = News
    context_object_name = 'news'
    success_url = '/news_list'

# untuk membuat berita baru
class NewsCreateView(LoginRequiredMixin, CreateView):
    model = News
    fields = ['title', 'pubDate', 'description', 'link']
    success_url = '/news_list'
    extra_context = {
        'title': 'Create News'
    }

    def form_valid(self, form):
        return super().form_valid(form)
    
    def get_context_data(self, *args, **kwargs):
        kwargs.update(self.extra_context)
        return super().get_context_data(*args, **kwargs)

    # memanggil template front end halaman awal
class HomePageView(TemplateView):
    template_name = 'admin/home.html'
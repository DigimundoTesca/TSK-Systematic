from django.http import HttpResponse
from django.shortcuts import render
from .forms import post

def index(request):
    template = 'index.html'
    context={
    	'title': "Home",
    }
    return render(request, template, context)
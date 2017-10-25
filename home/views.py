from django.http import HttpResponse
from django.shortcuts import render
from home.models import marca, modelo
from .forms import PostForm

def index(request):
    template = 'index.html'
    form=PostForm()
    context={
    	'form': form,
    	'title': "Home",
    }

   



    return render(request, template, context)


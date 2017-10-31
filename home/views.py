from django.http import HttpResponse
from django.shortcuts import render
from home.models import marca, modelo

def index(request):
    template = 'index.html'    
    context={
        'form': form,
        'title': "Home",
    }

    return render(request, template, context)


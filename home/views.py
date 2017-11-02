from django.http import HttpResponse
from django.shortcuts import render
from home.models import marca, modelo
import json

def index(request):
    template = 'index.html'    
    marca_a=marca.objects.all()
    modelo_a=modelo.objects.all()
    
    list_Marca= []
    list_Modelo=[]
    countmarc = 0;
    countmod = 0;

    for marc in marca_a:
        name = marc.name.replace('\'','')         
        list_Marca.append(name)

    for mod in modelo_a: 
        name = mod.name.replace('\'','')         
        obj_mod = {
            'name_sel': name,
            'marca_sel': mod.marca.name.replace('\'',''),
        }
        list_Modelo.append(obj_mod)

    marca_json = json.dumps(list_Marca)
    modelo_json = json.dumps(list_Modelo)
    
    context={        
        'title': "Home",
        'marca': marca_json,
        'modelo': modelo_json,
    }

    return render(request, template, context)


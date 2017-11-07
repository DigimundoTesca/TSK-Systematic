from django.http import HttpResponse
from django.shortcuts import render
from django.core.mail import send_mail
from home.models import marca, modelo
import json

def index(request):
    template = 'index.html'
    send_mail('Asunto', 'Aquí va el mensaje', 'darkanaian@hotmail.com', ['a.g.tornell@outlook.com'], fail_silently=False)
    
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
        list_Modelo.append(name)    


    marca_json = json.dumps(list_Marca)
    modelo_json = json.dumps(list_Modelo)
    
    context={        
        'title': "Home",
        'marca': marca_json,
        'modelo': modelo_json,
    }

    return render(request, template, context)

import smtplib

from django.shortcuts import render
from home.models import marca, modelo
from django.core.mail import send_mail

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
        'marca_obj': marca_a,
        'modelo_obj': modelo_a,
        'marca': marca_json,
        'modelo': modelo_json,
    }


    fromaddr = 'tescauber@gmail.com'
    toaddrs = 'a.g.tornell@outlook.com'
    msg = 'Why,Oh why!'
    username = 'tescauber@gmail.com'
    password = 'yosoytesca123'
    server = smtplib.SMTP('smtp.gmail.com:587')
    server.ehlo()
    server.starttls()
    server.login(username, password)
    server.sendmail(fromaddr, toaddrs, msg)
    server.quit()
    return render(request, template, context)
import smtplib

from django.shortcuts import render
from home.models import marca, modelo
from django.core.mail import send_mail
from django.core.mail import EmailMessage
from django.shortcuts import redirect
from django.template import Context
from django.template.loader import get_template
from home.forms import ContactForm

import json

def index(request):

    template = 'index.html'

    form = ContactForm()

    if request.method == 'POST':
        contact_name = request.POST.get('contact_name')
        contact_email = request.POST.get('contact_email')
        contact_phone = request.POST.get('contact_phone')
        contact_zone = request.POST.get('contact_zone')
        contact_comment = request.POST.get('contact_comment')
        datosfinales = request.POST.get('datosfinales')

        new_context = {
            'contact_name': contact_name
            'contact_email': contact_email
            'contact_phone': contact_phone
            'contact_zone': contact_zone
            'contact_comment': contact_comment
            'datosfinales': datosfinales
            }
        template = get_template('correo_tsk.html')
        html_content = template.render(new_context)

        fromaddr = 'tescauber@gmail.com'
        toaddrs = 'a.g.tornell@outlook.com'
        msg = contact_name +" "+ contact_email +" "+ contact_phone +" "+ contact_zone +" "+ contact_comment + "\n" + str(datosfinales)
        print(msg)
        #username = 'tescauber@gmail.com'
        #password = 'yosoytesca123'
        #server = smtplib.SMTP('smtp.gmail.com:587')
        #server.ehlo()
        #server.starttls()
        #server.login(username, password)        
        #server.sendmail(fromaddr, toaddrs, str(msg))
        #server.quit()
        sendmailform(request, toaddrs, html_content)

    def sendmailform(request, email_user, html_content):
        if email_user == None:
            return None
        else:
            fromaddr = 'tescauber@gmail.com'
            toaddrs = 'a.g.tornell@outlook.com'
            msg = MIMEMultipart()
            msg['From'] = fromaddr
            msg['To'] = toaddr
            msg['Subject'] = "Nuevo Formulario de Vehículos"
            body = html_content
            msg.attach(MIMEText(body, 'html'))

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
            'tipo_uber': mod.tipouber,
        }
        list_Modelo.append(obj_mod)

    marca_json = json.dumps(list_Marca)
    modelo_json = json.dumps(list_Modelo)

    

    context={
        'title': "Home",
        'form':form,
        'marca_obj': marca_a,
        'modelo_obj': modelo_a,
        'marca': marca_json,
        'modelo': modelo_json,
    }
    
    return render(request,template,context)


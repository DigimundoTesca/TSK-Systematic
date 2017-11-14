import smtplib

from django.shortcuts import render
from home.models import marca, modelo
from django.core.mail import send_mail
from collection.forms import ContactForm
from django.core.mail import EmailMessage
from django.shortcuts import redirect
from django.template import Context
from django.template.loader import get_template
from forms import ContactForm


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
    def contact(request):
    form_class = ContactForm    
    return render(request, 'contact.html', {
        'form': form_class,
    })


    """fromaddr = 'tescauber@gmail.com'
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
    return render(request, template, context)"""

    """def contact(request):
    form_class = ContactForm

    # new logic!
    if request.method == 'POST':
        form = form_class(data=request.POST)

        if form.is_valid():
            contact_name = request.POST.get(
                'contact_name'
            , '')
            contact_email = request.POST.get(
                'contact_email'
            , '')
            form_content = request.POST.get('content', '')

            # Email the profile with the 
            # contact information
            template = 
                get_template('contact_template.txt')
            context = Context({
                'contact_name': contact_name,
                'contact_email': contact_email,
                'form_content': form_content,
            })
            content = template.render(context)

            email = EmailMessage(
                "New contact form submission",
                content,
                "Your website" +'',
                ['youremail@gmail.com'],
                headers = {'Reply-To': contact_email }
            )
            email.send()
            return redirect('contact')

    return render(request, 'contact.html', {
        'form': form_class,
    })

    https://hellowebbooks.com/news/tutorial-setting-up-a-contact-form-with-django/"""

    def ContactForm(request):
        if request.method == 'POST':
            contact_name = request.POST['contact_name']
            contact_email = request.POST['contact_email']
            contact_phone = request.POST['contact_phone']
            contact_zone = request.POST['contact_zone']
            contact_comment = request.POST['contact_comment']

            print contact_name
            print contact_email
            print contact_phone
            print contact_zone
            print contact_comment

        form = ContactForm()
        context = {
        'form' : form
        }
        return render (request, 'formulario.html', context )
from django.http import HttpResponse
from django.shortcuts import render
from home.models import marca, modelo
import json

def index(request):
    template = 'index.html'    
    marca_a=marca.objects.all()
    modelo_a=modelo.objects.all()


    lista_modelos = [["Chrysler","300","UB"],["Audi","A4","UB"],["Audi","A5","UB"],["Audi","A6","UB"],["Audi","A7","UB"],["Audi","A8","UB"],["GMC","Acadia","XL"],["Seat","Alhambra","XL"],["VW","Alhambra","XL"],["Nissan","Armada","XL"],["Cadillac","ATS","UB"],["Toyota","Avanza","XL"],["Mercedez","C","Class","UB"],["Porsche","Cayenne","UB"],["Mercedez","CLS","UB"],["Jeep","Commander","XL"],["VW","Crafter","XL"],["Cadillac","CTS","UB"],["Mazda","CX9","XL"],["Land Rover","Disvovery","UB"],["Dodge","Durango","XL"],["Mercedez","Eclass","UB"],["Buick","Enclave","XL"],["Cadillac","Escale","XL"],["Ford","Expedition","XL"],["Ford","Explorer","XL"],["Chevrolet","Express","XL"],["Infiniti","G","UB"],["Infiniti","G11","UB"],["Mercedez","GL","Class","XL"],["Mercedez","GLK","UB"],["Jeep","Grand","Cherokee","UB"],["Lexus","GX","XL"],["Toyota","Hiace","XL"],["Toyota","Highlander","XL"],["Dodge","Journey","XL"],["Infiniti","JX","XL"],["Buick","Lacrosse","UB"],["Toyota","Land","Cruiser","XL"],["Land Rover","LR2","UB"],["Land Rover","LR3","XL"],["Land Rover","LR4","UB"],["Lexus","LX","XL"],["Infiniti","M","UB"],["Mercedez","M","Class","UB"],["Porsche","Macan","UB"],["Peugeot","Manager","XL"],["Acura","MDX","XL"],["Lincoln","MKC","UB"],["Lincoln","MKS","UB"],["Lincoln","MKX","UB"],["Lincoln","MKZ","UB"],["Mitsubishi","Montero","XL"],["Lincoln","Navigator","XL"],["Honda","Odyssey","XL"],["Mitsubishi","Outlander","XL"],["Chrysler","Pacifica","XL"],["Nissan","Pathfinder","XL"],["Honda","Pilot","XL"],["RAM","Promaster","XL"],["Audi","Q5","UB"],["Infiniti","Q50","UB"],["Audi","Q7","XL"],["Infiniti","Q70","UB"],["Infiniti","QX60","XL"],["Infiniti","QX70","XL"],["Infiniti","QX80","XL"],["Land Rover","Range Over"," UB"],["Land Rover","Range Rover Spot","UB"],["Acura","RDX","UB"],["Buick","Regal","UB"],["Acura","RLX","UB"],["VW","Routan","XL"],["Volvo","S60","UB"],["Volvo","S80","UB"],["Mercedez","Sclass","UB"],["Toyota","Sequoia","XL"],["VW","Sharan","XL"],["Toyota","Sienna","XL"],["Mercedez","Sprinter","XL"],["Cadillac","SRX","UB"],["Chevrolet","Suburban","XL"],["Chevrolet","Tahoe","XL"],["GMC","Terrain","XL"],["Acura","TL","UB"],["VW","Touareg",""],["Chrysler","Town&Counter","XL"],["Renault","Trafic","XL"],["Ford","Transit","XL"],["Chevrolet","Traverse","XL"],["Chevrolet","Uplender","XL"],["Nissan","Urban","XL"],["Mercedez","Viano","XL"],["Chrysler","Voyager","XL"],["Volvo","XC60","UB"],["Volvo","XC90","UB"],["Jaguar","XF","UB"],["Jaguar","XJ","UB"],["GMC","Yukon","XL"]]

    for mod in lista_modelos:
        marc_sel, created = marca.objects.get_or_create(name=mod[0])
        marc_sel.save()
    


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


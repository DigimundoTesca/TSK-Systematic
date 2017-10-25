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

    ar=['AM General','Acura','AgustaWestland','Airbus','Alfa Romeo','AM General','Anchi','Aprilia','Ashok Leyland','Aston Martin','Atul','Audi','BAIC','Bajaj','Baojun','BAW','Bell','Benelli','Beneteau','Bentley','Besturn','Biante','Big Boy','BMW','Bolwell','Brilliance','Bugatti','Buick','Buick','BYD','Cadillac','Campagna','Can-Am','Carlsson','CFMoto','Ch','Chana','Chang-an Ford','Chang-an Suzuki','Chang-an','Changfeng','Changhe Suzuki','Changhe','Changhe','Chery','Chevrolet','Chrysler','Citroen','CMC','Coachmen','Coda','CODA','CT','Dacia','Daewoo','DAF','Daihatsu','Datsun','Dayun','DeLorean','Demak','DENZA','DFSK','Dodge','Domoto','Dongfeng','DR','DS Motors','DS','Ducati','Eagle','Effa','E-Motors','Englon','Esemka','Eurocopter','FAW Mazda','FAW','FAW','Ferrari','Fiat','Fisker','Foday','Force','Ford','Foton','GAC GONOW','GAC Toyota','GAC Trumpchi','Gato','GAZ','Geely','GEM','Genesis','GM','GMC','Gomoto','Gonow','Govecs','GPX','Great Wall','Great','Guangqi Honda','Hafei','Haima','Haojue','Happy','Harley Davidson','Hawtai','Hawtai','Hero Honda','Hero','Holden','Honda','Hongqi','HPM','Huanghai','Hummer','Hyosung','Hyundai','ICML','IKCO','IncaPower','Infiniti','Innoson','Isuzu','Italika','Iveco','JAC Motors','Jaguar','Jeep','Jiangling','Jinbei','Jincheng','JMC','Jonway','Joylong','JRD','Junak','Kandi','KAPL','Kawasaki','Kawei','Keeway','Kenbo','Keyton','Kia','Koenigsegg','KTM','Kymco','Lada','Lamborghini','Lancia','Land Rover','Landwind','LCK','LDV','Leclerc','Lexus','Lifan','Lincoln','Loncin','Lotus','Luxgen','Mahindra','MAN','Maruti Suzuki','Maserati','Maxus','Maybach','Mazda','MBK','McLaren','Meezan','Mellowcabs','Mercedes-Benz','Mercury','MG','Micro','Minerva','Mini','Mitsubishi','Mitsuoka','Modenas','Moskvitch','Moto Guzzi','MV Agusta','Naza','New Asia','Nipponia','Nissan','Oldsmobile','Opel','Orient','Pagani','Pegasus','Perodua','Peugeot','Piaggio','Plymouth','Polaris','Pontiac','Porsche','Proton','Puzey','Qoros','Ram Trucks','RAM','Ravon','Rebel','Regal Raptor','Renault Samsung','Renault','Riich','Robinson','Roewe','Rolls-Royce','Rover','Royal Enfield','Rozgar','Runner','Saab','SACS','Saipa','Saleen','Saturn','Sazgar','Scion','Scomadi','Seat','Shanghai Maple','Shineray','Shuanghuan Auto','Siwa','Skoda','Smart','Sonalika','sou','Soueast','Speranza','Spyker','Ssangyong','Stallion','Starcraft','Subaru','Sufat','Suzuki','SYM','Tagaz','Tata','Tauro','Taxi','Tesla','test_toyota','TestBMW','TestTestMake','Tezraftar','TGB','TianMa','Tianye','Tobe','Toyota','Trabant','Triumph','TVR','TVS','UAZ','Uber','UM','Vauxhall','Vehículo autónomo','Venucia','Vespa','Viar','Victory','Viva','Volga','Volkswagen','Volvo','Vortex','VPG','Vuka Scuta','Wajer','Walton','Weichai','Wuling','X1000','Xinkai','Yamaha','Yema Auto','Z3000','ZAP Jonway','ZAZ','ZD','Zero Engineering','Zhonghua','ZNA','ZNEN','Zongshen','Zotye','ZXAUTO']

    for a in ar:
    	marcas=marca(nombreMarca=a)
    	marcas.save()



    return render(request, template, context)


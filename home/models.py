from django.db import models

# Create your models here.

class post(models.Model):
	name=models.CharField(max_length=50)
	email=models.EmailField(max_length=50)
	phone=models.CharField(max_length=10)
	address=models.CharField(max_length=100)
	comment=models.CharField(max_length=40)


class marca(models.Model):
	nombreMarca=models.CharField(max_length=50)

class modelo(models.Model):
	nombreModelo=models.CharField(max_length=50)
	UBERX = 'UX'
	UBERBLACK = 'UB'
	UBERSUV = 'US'
	UBERXL = 'UX'
	TIPO_UBER = (
		(UBERX, 'Uberx'),
		(UBERBLACK, 'UberBlack'),
		(UBERSUV, 'UberSuv'),
		(UBERXL, 'UberXL'),
	)

	tipouber = models.CharField(choices=TIPO_UBER, default=UBERX, max_length=15)
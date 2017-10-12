from django.db import models

# Create your models here.

class post(models.Model):
	name=models.CharField(max_length=50)
	email=models.EmailField(max_length=50)
	phone=models.CharField(max_length=10)
	address=models.CharField(max_length=100)
	comment=models.CharField(max_length=40)

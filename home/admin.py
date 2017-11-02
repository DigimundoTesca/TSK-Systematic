from django.contrib import admin

# Register your models here.

from home.models import marca, modelo

@admin.register(marca)
class AdminMarca(admin.ModelAdmin):
	list_display= ('name',)

@admin.register(modelo)
class AdminModelo(admin.ModelAdmin):
	list_display= ('name','marca','tipouber')



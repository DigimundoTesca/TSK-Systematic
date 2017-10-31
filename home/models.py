from django.db import models

class marca(models.Model):
    nombreMarca=models.CharField(max_length=50, unique=True)

    def __str__(self):
        return self.nombreMarca

    class Meta:
        ordering = ('nombreMarca',)
        verbose_name = 'Marca'
        verbose_name_plural = 'Marcas'

class modelo(models.Model):
    marca=models.ForeignKey(marca,default=1, on_delete=models.CASCADE)
    nombreModelo=models.CharField(max_length=50)
    UBERX = 'UX'
    UBERBLACK = 'UB'
    UBERSUV = 'US'
    UBERXL = 'UXL'
    TIPO_UBER = (
        (UBERX, 'Uberx'),
        (UBERBLACK, 'UberBlack'),
        (UBERSUV, 'UberSuv'),
        (UBERXL, 'UberXL'),
    )

    tipouber = models.CharField(choices=TIPO_UBER, default=UBERX, max_length=15)

    def __str__(self):
        return self.nombreModelo

    class Meta:
        ordering = ('nombreModelo',)
        verbose_name = 'Modelo'
        verbose_name_plural = 'Modelos'





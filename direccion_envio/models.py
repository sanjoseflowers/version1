from django.db import models
from django.contrib.auth.models import User
from carrito.models import Carrito

# Create your models here.
class DireccionEnvio(models.Model):
    user = models.ForeignKey(User, null= False, blank=False, on_delete=models.CASCADE)
    nombre = models.CharField(max_length=150)
    calle1 = models.CharField(max_length=150)
    calle2 = models.CharField(max_length=150)
    ciudad = models.CharField(max_length=150)
    referencia = models.CharField(max_length=150)
    telefono = models.CharField(max_length=150, null=True, blank=True)
    created_at = models.DateField(auto_now=True)

    def __str__(self):
        return self.calle1

ESTADO_CHOICES = [
        ('PENDIENTE', 'PENDIENTE'),
        ('COMPLETADO', 'COMPLETADO'),
        ('CANCELADO', 'CANCELADO'),
    ]

class Orden(models.Model):
    carrito = models.ForeignKey(Carrito, null=False, blank=False, on_delete=models.CASCADE)
    direccion = models.ForeignKey(DireccionEnvio, null=False, blank=False, on_delete=models.CASCADE, verbose_name="Dirección")
    estado = models.CharField(choices=ESTADO_CHOICES, max_length=15, default='PENDIENTE', verbose_name="Estado")
    pago = models.ImageField(null=True, blank=True, upload_to="Pagos/")
    created_at = models.DateField(auto_now=True)


    def __str__(self):
        return ''

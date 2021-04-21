from django.contrib import admin

# Register your models here.
from .models import Carrito, CarritoProductos

admin.site.register(Carrito)
admin.site.register(CarritoProductos)
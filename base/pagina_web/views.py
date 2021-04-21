from django.shortcuts import render, redirect
from base.pagina_web.models import Acerca, Galeria, Producto, Contacto, Categoria
from carrito.utils import get_or_create_cart
# Create your views here.
def Inicio(request):
    if request.user.is_superuser:
            return redirect('administrador')
    acerca = Acerca.objects.first()
    carrito = get_or_create_cart(request)
    contacto = Contacto.objects.first()
    my_context = {
        'acerca' : acerca,
        'carrito': carrito,
        'contacto': contacto,
    }
    return render(request, "index.html", my_context)

def GaleriaVista(request):
    galeria = Galeria.objects.all()
    carrito = get_or_create_cart(request)
    contacto = Contacto.objects.first()
    categoria = Categoria.objects.all()
    my_context = {
        'galeria': galeria,
        'carrito': carrito,
        'contacto': contacto,
        'categoria': categoria
    }
    return render(request, "galeria.html", my_context)

def ContactoVista(request):
    contacto = Contacto.objects.first()
    carrito = get_or_create_cart(request)

    my_context = {
        'contacto' : contacto,
        'carrito': carrito,
    }
    return render(request, 'contacto.html', my_context)
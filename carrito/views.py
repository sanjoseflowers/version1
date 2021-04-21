from django.shortcuts import render, redirect, get_object_or_404
from base.pagina_web.models import Producto
from .models import Carrito, CarritoProductos
from .utils import get_or_create_cart
from django.contrib import messages
from django.http import HttpResponse
import json
# Create your views here.
def carrito(request):
    carrito = get_or_create_cart(request)
    items = CarritoProductos.objects.filter(carrito_id=carrito.id)
    return render(request, 'carrito/car_todos.html', {'carrito':carrito,'items':items})

def agregar(request):
    carrito = get_or_create_cart(request)
    producto = get_object_or_404(Producto, pk=request.POST.get('producto_id'))
    carrito.productos.add(producto)
    lista = CarritoProductos.objects.filter(carrito_id=carrito.id)
    total = 0.0
    for item in lista:
        total = total + (float(item.cantidad) * float(item.producto.precio))
    resultado = Carrito.objects.get(id=carrito.id)
    resultado.subtotal = total
    resultado.total = total
    resultado.save()
    return redirect('carritos:carrito')

def eliminar(request):
    carrito = get_or_create_cart(request)
    producto = get_object_or_404(Producto, pk=request.POST.get('producto_id'))

    carrito.productos.remove(producto)
    return redirect('carritos:carrito')

def aumentar(request):
    consulta = CarritoProductos.objects.get(id=request.POST['id'])
    producto = Producto.objects.get(id=consulta.producto_id)
    if int(producto.cantidad) >= int(request.POST['cantidad']):
        consulta.cantidad = request.POST['cantidad']
        consulta.save()
        lista = CarritoProductos.objects.filter(carrito_id=consulta.carrito.id)
        total = 0.0
        for item in lista:
            total = total + (float(item.cantidad) * float(item.producto.precio))
        resultado = Carrito.objects.get(id=consulta.carrito.id)
        resultado.subtotal = total
        resultado.total = total
        resultado.save()
        mensaje_json = {}
        mensaje_json['error'] = False
        mensaje_json['mgs'] = resultado.total
        data_json = json.dumps(mensaje_json)
        mimetype="application/json"
        return HttpResponse(data_json,mimetype)
    else:
        mensaje_json = {}
        mensaje_json['error'] = True
        mensaje_json['mgs'] = 'La cantidad supera el stock del producto.'
        data_json = json.dumps(mensaje_json)
        mimetype="application/json"
        return HttpResponse(data_json,mimetype)

def disminuir(request):
    consulta = CarritoProductos.objects.get(id=request.POST['id'])
    consulta.cantidad = request.POST['cantidad']
    consulta.save()
    lista = CarritoProductos.objects.filter(carrito_id=consulta.carrito.id)
    total = 0.0
    for item in lista:
        total = total + (float(item.cantidad) * float(item.producto.precio))
    resultado = Carrito.objects.get(id=consulta.carrito.id)
    resultado.subtotal = total
    resultado.total = total
    resultado.save()
    mensaje_json = {}
    mensaje_json['error'] = False
    mensaje_json['mgs'] = resultado.total
    data_json = json.dumps(mensaje_json)
    mimetype="application/json"
    return HttpResponse(data_json,mimetype)


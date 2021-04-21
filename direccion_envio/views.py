from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from .models import DireccionEnvio
from django.views.generic import ListView
from .forms import DireccionEnvioForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from carrito.utils import get_or_create_cart
from django.http import HttpResponseRedirect
from .models import Orden
from carrito.utils import destroy_carrito


from base.pagina_web.models import Producto
from carrito.models import Carrito, CarritoProductos

# Create your views here.
class DireccionEnvioListView(ListView):
    model = DireccionEnvio
    template_name = 'direccion_envio/direccion_envio.html'

    def get_queryset(self):
        return DireccionEnvio.objects.filter(user=self.request.user)
    
@login_required()
def Crear(request):
    form = DireccionEnvioForm(request.POST or None)
    carrito = get_or_create_cart(request)
    if request.method == 'POST' and form.is_valid():
        direccion_envio = form.save(commit=False)
        direccion_envio.user = request.user

        direccion_envio.save()

        orden = Orden(
        carrito=carrito,
        direccion=direccion_envio,)
        orden.save()

        consulta = CarritoProductos.objects.filter(carrito_id=carrito.id)
        for item in consulta:
            producto = Producto.objects.get(id=item.producto_id)
            producto.cantidad = int(producto.cantidad) - int(item.cantidad)
            producto.save()

        destroy_carrito(request)

        messages.success(request, 'Pedido enviado con exitosamente')
        return redirect('carritos:carrito')

    return render(request, 'direccion_envio/crear.html',{
        'form': form,
        'carrito': carrito
    })

@login_required()
def confirmar(request):
    carrito = get_or_create_cart(request)
    return render(request, 'orden/envio.html',{'carrito':carrito})

@login_required()
def Pago(request):
    if request.method == 'POST':
        consulta = Orden.objects.get(id=request.POST['id'])
        consulta.pago = request.FILES['pago']
        consulta.save()
        return HttpResponseRedirect(request.META.get("HTTP_REFERER"))
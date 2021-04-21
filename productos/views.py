from django.shortcuts import render
from base.pagina_web.models import Producto, Contacto 
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from carrito.utils import get_or_create_cart
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models.query import EmptyQuerySet
from direccion_envio.models import Orden
from carrito.models import CarritoProductos
# Create your views here.
class ProductoListView(ListView):
    template_name = 'productos/lista_productos.html'
    queryset = Producto.objects.all().order_by('-id')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["productos"] = context['producto_list']
        context["carrito"] = get_or_create_cart(self.request)
        context["contacto"] = Contacto.objects.first()
        return context
    
class DetalleProductoView(DetailView):
    model = Producto
    template_name = 'productos/detalle_producto.html'

class PedidosListView(LoginRequiredMixin, ListView):
    login_url = 'login'
    template_name = 'pedidos/pedidos.html'

    def get_queryset(self):
        ordenes = Orden.objects.filter(estado='COMPLETADO')
        todas_ordenes = Orden.objects.all()
        return todas_ordenes

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['datos'] = CarritoProductos.objects.all()
        return context
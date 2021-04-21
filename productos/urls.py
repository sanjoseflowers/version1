
from django.urls import path 
from .views import DetalleProductoView, ProductoListView, PedidosListView

urlpatterns = [
    path("", ProductoListView.as_view(), name="productos"),
    path("<int:pk>", DetalleProductoView.as_view(), name="detalle_producto"),
    path("pedidos/", PedidosListView.as_view(), name="pedidos"),
]
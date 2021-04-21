
from django.urls import path 
from base.iniciar_sesion.views import LoginFormView, LogoutView, AcercaListView, CategoriaListView, GaleriaListView, ProductosListView, ContactoListView, AcercaCrearView,AcercaActualizarView, AcercaEliminarView, CategoriaCrearView, CategoriaActualizarView, CategoriaEliminarView, GaleriaCrearView, GaleriaActualizarView, GaleriaEliminarView, ProductosCrearView, ProductosActualizarView, ProductosEliminarView, ContactosCrearView, ContactosActualizarView, ContactosEliminarView, PedidoListView, PedidosActualizarView
from . import views
from django.contrib.auth.decorators import login_required

urlpatterns = [
    path('ingresar/', LoginFormView.as_view(), name="ingresar"),
    path("salir/", LogoutView.as_view(), name="salir"),
    path('registrar/', views.register_view, name="registrar"),

    path('administrador/', views.administrador, name="administrador"),
    path('acerca/', login_required(AcercaListView.as_view()), name="acerca_lista"),
    path('acerca_crear/', AcercaCrearView.as_view(), name="acerca_crear"),
    path("acerca/actualizar/<int:pk>/", AcercaActualizarView.as_view(), name="acerca_actualizar"),
    path("acerca/eliminar/<int:pk>/", AcercaEliminarView.as_view(), name="acerca_eliminar"),

    path('categoria/', CategoriaListView.as_view(), name="categoria_lista"),
    path('categoria_crear/', CategoriaCrearView.as_view(), name="categoria_crear"),
    path("categoria/actualizar/<int:pk>/", CategoriaActualizarView.as_view(), name="categoria_actualizar"),
    path("categoria/eliminar/<int:pk>/", CategoriaEliminarView.as_view(), name="categoria_eliminar"),

    path('galeria/', GaleriaListView.as_view(), name="galeria_lista"),
    path('galeria_crear/', GaleriaCrearView.as_view(), name="galeria_crear"),
    path("galeria/actualizar/<int:pk>/", GaleriaActualizarView.as_view(), name="galeria_actualizar"),
    path("galeria/eliminar/<int:pk>/", GaleriaEliminarView.as_view(), name="galeria_eliminar"),

    path('productos_list/', ProductosListView.as_view(), name="productos_lista"),
    path('productos_crear/', ProductosCrearView.as_view(), name="producto_crear"),
    path("productos/actualizar/<int:pk>/", ProductosActualizarView.as_view(), name="producto_actualizar"),
    path("productos/eliminar/<int:pk>/", ProductosEliminarView.as_view(), name="producto_eliminar"),

    path('contactos/', ContactoListView.as_view(), name="contacto_lista"),
    path('contactos_crear/', ContactosCrearView.as_view(), name="contacto_crear"),
    path("contactos/actualizar/<int:pk>/", ContactosActualizarView.as_view(), name="contacto_actualizar"),
    path("contactos/eliminar/<int:pk>/", ContactosEliminarView.as_view(), name="contacto_eliminar"),

    path('pedidos/', PedidoListView.as_view(), name="pedido_lista"),
    path('pedidos/actualizar/<int:pk>/', PedidosActualizarView.as_view(), name="pedido_actualizar"),

    path("reportes/", views.reportes, name="reportes")

]

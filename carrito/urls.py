from django.urls import path 
from . import views

app_name = 'carritos'

urlpatterns = [
    path('', views.carrito, name="carrito"),
    path('agregar/', views.agregar, name="agregar"),
    path('eliminar/', views.eliminar, name="eliminar"),

    path('aumentar', views.aumentar, name="aumentar"),
    path('disminuir', views.disminuir, name="disminuir"),
]

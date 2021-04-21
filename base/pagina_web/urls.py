from django.urls import path 
from base.pagina_web.views import Inicio, GaleriaVista, ContactoVista

urlpatterns = [
    path('', Inicio, name="inicio"),
    path('galeria/', GaleriaVista, name="galeria"),
    path('contacto/', ContactoVista, name="contacto"),
]

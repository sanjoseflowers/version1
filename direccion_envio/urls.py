from django.urls import path 
from .views import DireccionEnvioListView, Crear, Pago

app_name = 'direcciones'

urlpatterns = [
    path('', DireccionEnvioListView.as_view(), name="direccion"),
    path('crear/', Crear, name="crear"),

    path('pago/', Pago, name="pago"),
]

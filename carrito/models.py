import uuid
from django.db import models
from django.contrib.auth.models import User
from base.pagina_web.models import Producto
from django.db.models.signals import pre_save, m2m_changed

# Create your models here.
class Carrito(models.Model):
    carrito_id = models.CharField(max_length=100, null= False, blank= False, unique=True)
    user = models.ForeignKey(User, null=True, blank=True,on_delete=models.CASCADE)
    productos = models.ManyToManyField(Producto, through='CarritoProductos')
    subtotal = models.DecimalField(default=0.0, max_digits=8, decimal_places=2)
    total = models.DecimalField(default=0.0, max_digits=8, decimal_places=2)
    create_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.carrito_id

    def actualizar_totales(self):
        self.actualizar_subtotal()
        self.actualizar_total()

    def actualizar_subtotal(self):
        self.subtotal = sum([ producto.precio for producto in self.productos.all() ])
        self.save()

    def productos_relacionados(self):

        return self.carritoproductos_set.select_related('producto')
    
    def usuario_relacionado(self):
        return self.user

    def actualizar_total(self):
        self.total = self.subtotal
        self.save()

class CarritoProductos(models.Model):
    carrito = models.ForeignKey(Carrito, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.IntegerField(default=1)
    created_at = models.DateTimeField(auto_now=True)

def set_carrito_id(sender, instance, *args, **kwargs):
    car = Carrito.objects.all()
    aux_len = len(car)
    car_final = 101
    if not instance.carrito_id:
        instance.carrito_id = str(car_final + aux_len )

def actualizar_totales(sender, instance, action, *args, **kwargs):
    if action == 'post_add' or action == 'post_remove' or action == 'post_clear':
        instance.actualizar_totales()

pre_save.connect(set_carrito_id, sender=Carrito)
m2m_changed.connect(actualizar_totales, sender=Carrito.productos.through)
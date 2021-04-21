from django.db import models
from base.pagina_web.choices import disponible

# Create your models here.
class Acerca(models.Model):
    titulo = models.CharField(null=False, blank=False, max_length=150, verbose_name='Titulo')
    descripcion = models.TextField(null=False, blank=False, verbose_name='Descripción')
    creacion = models.DateTimeField(auto_now_add=True, null=True, blank=True,
                                   verbose_name='Fecha de creación')
    actualizacion = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='Fecha de actualización')

    def __str__(self):
        return "{}".format(self.titulo)

    class Meta:
        verbose_name_plural = "Acerca"


class Categoria(models.Model):
    nombre = models.CharField(null=False, blank=False, max_length=150)
    def __str__(self):
        return "{}".format(self.nombre)

class Galeria(models.Model):
    descripcion = models.CharField(null=False, blank=False, max_length=150, verbose_name='Descripción')
    imagen1 = models.ImageField(null=False, blank=False, verbose_name="Imagen1", upload_to="Imagen1")
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE,blank=True, null=True)

    creacion = models.DateTimeField(auto_now_add=True, null=True, blank=True,
                                   verbose_name='Fecha de creación')
    actualizacion = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='Fecha de actualización')

    def __str__(self):
        return "{}".format(self.descripcion)

    class Meta:
        verbose_name_plural = "Galeria"

class Producto(models.Model):
    titulo = models.CharField(null=False, blank=False, max_length=150, verbose_name='Titulo')
    precio = models.DecimalField(null=False, blank=False, max_digits=8, decimal_places=2, default=0.0)
    disponibilidad = models.CharField(null=False, blank=False, choices=disponible, max_length=1, verbose_name='Disponibilidad')
    imagen = models.ImageField(null=False, blank=False, verbose_name="Productos", upload_to="Productos/")
    cantidad = models.CharField(null=True, blank=False, max_length=150, verbose_name='Cantidad')
    descripcion = models.TextField(null=True, blank=False, verbose_name='Descripción')

    creacion = models.DateTimeField(auto_now_add=True, null=True, blank=True,
                                   verbose_name='Fecha de creación')
    actualizacion = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='Fecha de actualización')

    def __str__(self):
        return "{}".format(self.titulo)

    class Meta:
        verbose_name_plural = "Productos"


class Contacto(models.Model):
    direccion = models.CharField(max_length=250, null=False, blank=False , verbose_name="Dirección")
    correo1 = models.EmailField(null=False, blank=False, verbose_name="Correo 1")
    correo2 = models.EmailField(null=False, blank=False, verbose_name="Correo 2")
    telefono1 = models.CharField(null=False, blank=False, max_length=10, verbose_name="Telefono 1")
    telefono2 = models.CharField(null=False, blank=False, max_length=10, verbose_name="Telefono 2")
    mapa = models.TextField(null=False, blank=False, verbose_name="Mapa")
    facebbok = models.URLField(null=False, blank=False, max_length=300, verbose_name="Facebook")
    whatsapp = models.URLField(null=False, blank=False, max_length=300, verbose_name="WhatsApp")

    creacion = models.DateTimeField(auto_now_add=True, null=True, blank=True,
                                   verbose_name='Fecha de creación')
    actualizacion = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='Fecha de actualización')

    def __str__(self):
        return "{}".format(self.direccion)

    class Meta:
        verbose_name_plural = "Contacto"

# Generated by Django 2.2 on 2020-12-26 19:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pagina_web', '0004_auto_20201216_1505'),
        ('carrito', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='carrito',
            name='productos',
            field=models.ManyToManyField(through='carrito.CarritoProductos', to='pagina_web.Producto'),
        ),
    ]
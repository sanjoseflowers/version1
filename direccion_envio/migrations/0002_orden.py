# Generated by Django 2.2 on 2020-12-26 22:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('carrito', '0002_carrito_productos'),
        ('direccion_envio', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Orden',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateField(auto_now=True)),
                ('carrito', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='carrito.Carrito')),
                ('direccion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='direccion_envio.DireccionEnvio')),
            ],
        ),
    ]

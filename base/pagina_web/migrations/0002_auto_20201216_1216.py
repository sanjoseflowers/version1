# Generated by Django 2.2 on 2020-12-16 17:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pagina_web', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Galeria',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=150, verbose_name='Descripción')),
                ('imagen1', models.ImageField(upload_to='Imagen1', verbose_name='Imagen1')),
                ('imagen2', models.ImageField(upload_to='Imagen2', verbose_name='Imagen2')),
                ('imagen3', models.ImageField(upload_to='Imagen3', verbose_name='Imagen3')),
                ('creacion', models.DateTimeField(auto_now_add=True, null=True, verbose_name='Fecha de creación')),
                ('actualizacion', models.DateTimeField(auto_now=True, null=True, verbose_name='Fecha de actualización')),
            ],
            options={
                'verbose_name_plural': 'Galeria',
            },
        ),
        migrations.AlterModelOptions(
            name='acerca',
            options={'verbose_name_plural': 'Acerca'},
        ),
    ]

# Generated by Django 2.2 on 2020-12-26 20:39

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='DireccionEnvio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('calle1', models.CharField(max_length=150)),
                ('calle2', models.CharField(max_length=150)),
                ('ciudad', models.CharField(max_length=150)),
                ('referencia', models.CharField(max_length=150)),
                ('created_at', models.DateField(auto_now=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]

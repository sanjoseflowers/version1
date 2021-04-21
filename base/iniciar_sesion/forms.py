from django.forms import *
from django import forms
from django.contrib.auth.models import User
from base.pagina_web.models import Acerca, Galeria, Producto, Contacto, Categoria
from direccion_envio.models import Orden

class RegisterForm(forms.Form):
    username= forms.CharField(min_length=4,max_length=10, required=True,
                                widget=forms.TextInput(attrs={
                                    'class': 'form-control',
                                    'placeholder':'Usuario',
                                    'id':'username',
                                }))
    email= forms.EmailField(required=True,widget=forms.EmailInput(attrs={
        'class':'form-control',
        'id':'email',
        'placeholder':'correo@correo.com'
    }))
    password= forms.CharField(required=True, widget=forms.PasswordInput(attrs={
        'class':'form-control',
        'placeholder':'Contraseña'
    }))

    def clean_username(self):
        username = self.cleaned_data.get('username')

        if User.objects.filter(username=username).exists():
            raise forms.ValidationError('Ya existe un usuario con este nombre')

        return username

    def clean_email(self):
        email = self.cleaned_data.get('email')

        if User.objects.filter(email=email).exists():
            raise forms.ValidationError('El correo ya esta en uso')

        return email

class AcercaForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['titulo'].widget.attrs['autofocus'] = True

    class Meta:
        model = Acerca
        fields = ['titulo', 'descripcion']
        widgets = {
            'titulo': TextInput(attrs={
                'placeholder': 'Ingrese un titulo',
                'class':'form-control',
            }),
            'descripcion': Textarea(attrs={
                'placeholder': 'Ingrese una descripción',
                'class':'form-control',
                'rows':'5',
            }),
        }

class CategoriaForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['nombre'].widget.attrs['autofocus'] = True

    class Meta:
        model = Categoria
        fields = ['nombre']
        widgets = {
            'nombre': TextInput(attrs={
                'placeholder': 'Ingrese un nombre',
                'class':'form-control',
            }),
        }

class GaleriaForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['descripcion'].widget.attrs['autofocus'] = True

    class Meta:
        model = Galeria
        fields = ['descripcion', 'imagen1','categoria']
        widgets = {
            'descripcion': TextInput(attrs={
                'placeholder': 'Ingrese una descripción',
                'class':'form-control',
            }),
            'imagen1': FileInput(attrs={
                'class':'form-control',
            }),
            'categoria': Select(attrs={
                'class':'form-control',
            }),
        }

class ProductosForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['titulo'].widget.attrs['autofocus'] = True

    class Meta:
        model = Producto
        fields = ['titulo', 'precio','disponibilidad','imagen','cantidad','descripcion']
        widgets = {
            'titulo': TextInput(attrs={
                'placeholder': 'Ingrese un titulo',
                'class':'form-control',
            }),
            'precio': TextInput(attrs={
                'class':'form-control',
                'placeholder': 'Ingrese un precio',
            }),
            'disponibilidad': Select(attrs={
                'class': 'form-control',
                'style': 'width: 100%'
            }
            ),
            'imagen': FileInput(attrs={
                'class':'form-control',
            }),
            'cantidad': TextInput(attrs={
                'placeholder': 'Ingrese un stock',
                'class':'form-control',
                'type' : 'number'
            }),
            'descripcion': Textarea(attrs={
                'placeholder': 'Ingrese una descripción',
                'class':'form-control',
                'rows':'5',
            }),
        }

class ContactosForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['direccion'].widget.attrs['autofocus'] = True

    class Meta:
        model = Contacto
        fields = ['direccion', 'correo1', 'correo2', 'telefono1','telefono2', 'mapa','facebbok','whatsapp']
        widgets = {
            'direccion': TextInput(attrs={
                'placeholder': 'Ingrese un titulo',
                'class':'form-control',
            }),
            'correo1': EmailInput(attrs={
                'placeholder': 'correo1@correo.com',
                'class':'form-control',
            }),
            'correo2': EmailInput(attrs={
                'placeholder': 'correo2correo.com',
                'class':'form-control',
            }),
            'telefono1': TextInput(attrs={
                'placeholder': '32165165',
                'class':'form-control',
            }),
            'telefono2': TextInput(attrs={
                'placeholder': '98465465465',
                'class':'form-control',
            }),
            'mapa': Textarea(attrs={
                'placeholder': 'Ingrese el frame',
                'class':'form-control',
            }),
            'facebbok': URLInput(attrs={
                'placeholder': 'Ingrese el link',
                'class':'form-control',
            }),
            'whatsapp': URLInput(attrs={
                'placeholder': 'Ingres el link',
                'class':'form-control',
            }),
        }

class PedidosForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['estado'].widget.attrs['autofocus'] = True

    class Meta:
        model = Orden
        fields = ['estado']
        widgets = {
            'estado': Select(attrs={
                'class': 'form-control',
                'style': 'width: 100%'
            }),
        }
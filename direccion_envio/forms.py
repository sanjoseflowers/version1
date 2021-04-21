from django.forms import *
from .models import DireccionEnvio

class DireccionEnvioForm(ModelForm):
    class Meta:
        model = DireccionEnvio
        fields = ['nombre','calle1','calle2','ciudad','referencia','telefono']

        widgets = {
             'nombre': TextInput(attrs={
                'placeholder': 'Ingrese su nombre completo',
                'class': 'form-control',
            }
             ),
            'calle1': TextInput(attrs={
                'placeholder': 'Ingrese la calle principal',
                'class': 'form-control',
            }
            ),
            'calle2': TextInput(attrs={
                'placeholder': 'Ingrese la calle secundaria',
                'class': 'form-control',
            }
            ),
            'ciudad': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese la ciudad de envío',
            }
            ),
            'referencia': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese una referencia',
            }
            ),
            'telefono': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ingrese una teléfono',
                'type': 'number'
            })
    }


from django import forms
from .models import Bolum,Doktor,Randevu
from django.db.models import QuerySet as queryset


class RandevuForm(forms.ModelForm):
    class Meta:
        model = Randevu
        fields = ['tarih', 'saat', 'bolum']
        widgets = {
            'tarih': forms.DateInput(attrs={'type': 'date'}),
            'saat': forms.TimeInput(attrs={'type': 'time'}),
            'bolum': forms.Select(attrs={'id': 'bolum-secimi'})
        }

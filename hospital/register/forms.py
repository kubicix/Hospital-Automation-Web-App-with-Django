from django import forms
from .models import Bolum,Doktor,Randevu
from django.db.models import QuerySet as queryset


class RandevuForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        tcno = kwargs.pop('tcno')  # tcno değerini kwargs'tan çıkarıyoruz
        super(RandevuForm, self).__init__(*args, **kwargs)
        self.fields['tcno'] = forms.CharField(initial=tcno, widget=forms.HiddenInput())

    class Meta:
        model = Randevu
        fields = ['tarih', 'saat', 'bolum']
        widgets = {
            'tarih': forms.DateInput(attrs={'type': 'date'}),
            'saat': forms.TimeInput(attrs={'type': 'time'}),
            'bolum': forms.Select(attrs={'id': 'bolum-secimi'})
        }

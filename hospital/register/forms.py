from django import forms
from .models import Bolum,Doktor,Randevu
from django.db.models import QuerySet as queryset


class RandevuForm(forms.ModelForm):
    hastatcno = forms.CharField(widget=forms.HiddenInput())

    def __init__(self, *args, **kwargs):
        tcno = kwargs.pop('tcno', None)
        super(RandevuForm, self).__init__(*args, **kwargs)
        self.fields['hastatcno'].initial = tcno

    class Meta:
        model = Randevu
        fields = ['hastatcno', 'tarih', 'saat', 'bolum']
        widgets = {
            'tarih': forms.DateInput(attrs={'type': 'date'}),
            'saat': forms.TimeInput(attrs={'type': 'time'}),
            'bolum': forms.Select(attrs={'id': 'bolum-secimi'})
        }



    
    



from django.db import models

class Hasta(models.Model):
    tcno = models.CharField(max_length=11, primary_key=True)
    password = models.CharField(max_length=128)


class Randevu(models.Model):
    hastatcno = models.CharField(max_length=11,null=True)
    tarih = models.DateField()
    saat = models.TimeField()
    bolum = models.CharField(max_length=255)
    
class Bolum(models.Model):
    bolumad = models.CharField(max_length=100)
    idbolum = models.IntegerField(primary_key=True,default=0)

    def __str__(self):
        return self.bolumad
    
class Doktor(models.Model):
    idDoktor=models.IntegerField(primary_key=True)
    ad = models.CharField(max_length=100)
    soyad = models.CharField(max_length=100)
    Bolum_idbolum = models.ForeignKey(Bolum, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.ad} {self.soyad}"
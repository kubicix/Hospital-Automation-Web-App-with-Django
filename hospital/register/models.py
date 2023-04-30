from django.db import models

class Hasta(models.Model):
    tcno = models.CharField(max_length=11, primary_key=True)
    password = models.CharField(max_length=20)

from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from .models import Hasta

def login_view(request):
    if request.method == 'POST':
        tcno = request.POST['tcno']
        password = request.POST['password']

        # Hasta tablosunda giriş bilgilerini sorgula
        try:
            hasta = Hasta.objects.get(tcno=tcno, password=password)
        except Hasta.DoesNotExist:
            error_message = "Sicil Numarası veya Şifre Yanlış!"
            return render(request, 'hastaanasayfa.html', {'error_message': error_message})

        # Giriş başarılı ise hasta ana sayfasına yönlendir
        return render(request,'hastaanasayfa.html')

    return render(request, 'hastalogin.html')

from django.shortcuts import render

def hastaanasayfa(request):
    return render(request, 'hastaanasayfa.html')

def anasayfa(request):
    return render(request, 'anasayfa.html')




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
            messages.error(request, error_message)
            return render(request, 'hastalogin.html')

        # Giriş başarılı ise hasta ana sayfasına yönlendir
        return redirect('hastaanasayfa')

    return render(request, 'hastalogin.html')


def hastaanasayfa(request ):
   
    return render(request, 'hastaanasayfa.html')


def anasayfa(request):
    
    return render(request, 'anasayfa.html')

def randislem(request):
 
    return render(request, 'randislem.html')

def randal(request):
  
    return render(request, 'randal.html')




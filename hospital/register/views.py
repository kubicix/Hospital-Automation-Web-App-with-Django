from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from .models import Hasta,Doktor
from .models import Bolum
from .forms import RandevuForm

def randevu_formu(request):
    bolumler = Bolum.objects.all()
    form = RandevuForm(request.POST or None)

    if request.method == 'POST' and form.is_valid():
        # Verileri modele çevir
        randevu = form.save(commit=False)
        # Verileri veritabanına kaydet
        randevu.save()
        
        

    return render(request, 'randal.html', {'form': form, 'bolumler': bolumler})




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
        request.session['tcno'] = tcno
        print(request.session.get('tcno')) 
        return redirect('hastaanasayfa')
    

    return render(request, 'hastalogin.html')


def hastaanasayfa(request ):
    tcno = request.session.get('tcno')
    print(tcno) 
    return render(request, 'hastaanasayfa.html')


def anasayfa(request):
    tcno = request.session.get('tcno')
    print(tcno) 
    return render(request, 'anasayfa.html')

def randislem(request):
    tcno = request.session.get('tcno')
    print(tcno) 
    return render(request, 'randislem.html')

def randal(request):
    tcno = request.session.get('tcno')
    print(tcno) 
    return render(request, 'randal.html')




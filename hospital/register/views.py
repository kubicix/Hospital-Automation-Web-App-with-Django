from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from .models import Hasta,Doktor
from .models import Bolum
from .forms import RandevuForm
from django.contrib.auth.hashers import make_password

def randevu_formu(request):
    tcno = request.session.get('tcno')
    bolumler = Bolum.objects.all()
    
    if request.method == 'POST':
        form = RandevuForm(request.POST, tcno=tcno)
        form.fields['hastatcno'].initial = tcno
        if form.is_valid():
            randevu = form.save(commit=False)
            randevu.save()
            print("Form is valid and submitted successfully.")
    else:
        form = RandevuForm(tcno=tcno)
    return render(request, 'randal.html', {'form': form, 'bolumler': bolumler})






def sifre(request):
    tcno = request.session.get('tcno')
    hasta = Hasta.objects.get(tcno=tcno)
    
    if request.method == 'POST':
        yeni_sifre = request.POST.get('yeni_sifre')
        yeni_sifre_tekrar = request.POST.get('yeni_sifre_tekrar')
        
        if yeni_sifre == yeni_sifre_tekrar:
            hasta.password = yeni_sifre
            hasta.save()
            return redirect('anasayfa')
        else:
            messages.error(request, 'Şifreler eşleşmiyor.')
    
    return render(request, 'sifre.html')




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




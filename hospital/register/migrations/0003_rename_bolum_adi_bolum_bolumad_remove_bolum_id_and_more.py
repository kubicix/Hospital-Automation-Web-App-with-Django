# Generated by Django 4.1.3 on 2023-05-03 18:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('register', '0002_bolum_randevu'),
    ]

    operations = [
        migrations.RenameField(
            model_name='bolum',
            old_name='bolum_adi',
            new_name='bolumad',
        ),
        migrations.RemoveField(
            model_name='bolum',
            name='id',
        ),
        migrations.AddField(
            model_name='bolum',
            name='idbolum',
            field=models.IntegerField(default=0, primary_key=True, serialize=False),
        ),
        migrations.CreateModel(
            name='Doktor',
            fields=[
                ('idDoktor', models.IntegerField(primary_key=True, serialize=False)),
                ('ad', models.CharField(max_length=100)),
                ('soyad', models.CharField(max_length=100)),
                ('Bolum_idbolum', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='register.bolum')),
            ],
        ),
    ]
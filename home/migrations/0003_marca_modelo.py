# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-10-19 21:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_auto_20171012_1306'),
    ]

    operations = [
        migrations.CreateModel(
            name='marca',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreMarca', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='modelo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreModelo', models.CharField(max_length=50)),
                ('tipouber', models.CharField(choices=[('UX', 'Uberx'), ('UB', 'UberBlack'), ('US', 'UberSuv'), ('UX', 'UberXL')], default='UX', max_length=15)),
            ],
        ),
    ]
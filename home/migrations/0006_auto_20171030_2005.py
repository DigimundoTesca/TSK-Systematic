# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-10-31 02:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_auto_20171030_1440'),
    ]

    operations = [
        migrations.AlterField(
            model_name='modelo',
            name='nombreModelo',
            field=models.CharField(max_length=50),
        ),
    ]

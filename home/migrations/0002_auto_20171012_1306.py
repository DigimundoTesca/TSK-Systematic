# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-10-12 18:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='phone',
            field=models.CharField(max_length=10),
        ),
    ]

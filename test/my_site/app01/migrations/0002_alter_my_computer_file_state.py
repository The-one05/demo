# Generated by Django 3.2.3 on 2021-06-04 15:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app01', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='my_computer',
            name='file_state',
            field=models.IntegerField(default=1),
        ),
    ]

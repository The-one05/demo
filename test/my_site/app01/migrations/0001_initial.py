# Generated by Django 3.2.3 on 2021-06-04 13:31

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='My_computer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file_name', models.CharField(max_length=80)),
                ('file_type', models.CharField(max_length=10)),
                ('file_state', models.IntegerField()),
                ('pre_id', models.IntegerField()),
            ],
        ),
    ]
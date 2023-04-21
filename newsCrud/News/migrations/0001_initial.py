# Generated by Django 3.2.18 on 2023-03-27 19:48

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=255)),
                ('pubDate', models.DateField()),
                ('description', models.TextField()),
                ('link', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'news',
            },
        ),
    ]

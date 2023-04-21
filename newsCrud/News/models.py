from django.db import models

# Create your models here.

# untuk data store 
class News(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255)
    pubDate = models.DateField()
    description = models.TextField()
    link = models.CharField(max_length=255)

    def __str__(self):
        return f'{self.id} - {self.title}'
    
    class Meta:
        db_table = 'news'
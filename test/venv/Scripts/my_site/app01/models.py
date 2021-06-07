from django.db import models

# Create your models here.


class My_computer(models.Model):
	file_name = models.CharField(max_length=80)
	file_type = models.CharField(max_length=10)
	file_state = models.IntegerField(default=1)
	pre_id = models.IntegerField()

	def __str__(self):
		return u'My_computer:%s'% self.file_name


class Recycle(models.Model):
	file_name = models.CharField(max_length=80)
	file_type = models.CharField(max_length=10)
	pre_id = models.IntegerField()
	r_id = models.IntegerField()
	file_level = models.IntegerField(default=1)


	def __str__(self):
		return u'Recycle:%s' % self.file_name

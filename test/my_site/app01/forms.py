#coding = utf-8

from django import forms

class UploadFileForm(forms.Form):
	#多文件上传
	files = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))
	#file = forms.FileField()
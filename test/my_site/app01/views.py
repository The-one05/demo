#coding = utf-8

from django.shortcuts import render
from django.shortcuts import HttpResponse

from django.http import HttpResponseRedirect
import os
from app01.models import My_computer,Recycle
from .forms import UploadFileForm

# Create your views here.




#根据id获取其子目录
def file_list(request,id=0):
	form = UploadFileForm()
	filesList = My_computer.objects.filter(pre_id=id,file_state=1).order_by("-file_type")
	return render(request,"my_computer.html",{"filesList":filesList,"fileID":id,"form":form})

#文件上传
def file_upload(request,id):
	if request.method == "POST":
		form = UploadFileForm(request.POST,request.FILES)
		if form.is_valid():
			file_list = []
			files = request.FILES.getlist('files')
			for f in files:
				baseDir = os.path.dirname(os.path.abspath(__name__))
				fileDir = os.path.join(baseDir,'static','upload')
				fileName = os.path.join(fileDir,f.name)
				fobj = open(fileName,'wb')
				for chunk in f.chunks():
					fobj.write(chunk)
				fobj.close()
				file_list.append(My_computer(file_name=f.name,file_type="文件",file_state=1,pre_id=id))
			My_computer.objects.bulk_create(file_list)
			return HttpResponseRedirect("/app01/%d/" % (id,))
		else:
			return HttpResponse("上传失败")


#获取回收站文件

def recycle_list(request):
	filesList = Recycle.objects.filter(file_level=0)
	return render(request,"recycle.html",{"filesList":filesList,})


#删除文件

def delete_file(requset,file_id):

	obj = My_computer.objects.get(id=file_id)
	if obj.file_type == "文件":
		obj.file_state=0
		obj.save()
		#存入回收站
		file = Recycle.objects.create(file_name=obj.file_name,file_type=obj.file_type,pre_id=obj.pre_id,r_id=obj.id,file_level=0)
	else:
		global childrens
		childrens = []
		all_file = My_computer.objects.filter(file_state=1)
		childrens = get_childrens(all_file,file_id)
		file_list = []
		for file in childrens:
			#从磁盘删除
			f = My_computer.objects.get(id=file.id)
			f.file_state = 0
			f.save()
			#存入回收站
			file_list.append(Recycle(file_name=file.file_name,file_type=file.file_type,pre_id=file.pre_id,r_id=file.id,file_level=1))
		obj.file_state = 0
		obj.save()
		file_list.append(Recycle(file_name=obj.file_name,file_type=obj.file_type,pre_id=obj.pre_id,r_id=obj.id,file_level=0))
		Recycle.objects.bulk_create(file_list)

	
	return HttpResponseRedirect("/app01/%d/" % (obj.pre_id,))

#获取指定目录下所有子目录
def get_childrens(files,id):
	for file in files:
		if file.pre_id == id:
			childrens.append(file)
			get_childrens(files,file.id)
	return childrens

#还原文件

def reduction_file(request,file_id):

	obj = Recycle.objects.get(id=file_id)
	if obj.file_type == "文件":
		f = My_computer.objects.get(id=obj.r_id)  #obj在Recycle中获取用r_id
		f.file_state = 1
		f.save()
		obj.delete()
	else:
		global childrens
		childrens = []
		all_delete_file = My_computer.objects.filter(file_state=0)
		childrens = get_childrens(all_delete_file,obj.r_id)
		rf = My_computer.objects.get(id=obj.r_id)
		childrens.append(rf)
		for file in childrens:
			f = My_computer.objects.get(id=file.id)   #file 在My_computer中获取用id
			f.file_state = 1
			f.save()
			df = Recycle.objects.get(r_id=file.id)
			df.delete()


	return HttpResponseRedirect("/app01/recycle/")


#新建文件夹

def set_dir(request,id):
	dirName = request.POST["dirName"]
	My_computer.objects.create(file_name=dirName,file_type="文件夹",file_state=1,pre_id=id)
	return HttpResponseRedirect("/app01/%d/" % (id,))


#返回上一级目录

def back(request,file_id):
	f = My_computer.objects.get(id=file_id)
	return HttpResponseRedirect("/app01/%d/" % (f.pre_id,))
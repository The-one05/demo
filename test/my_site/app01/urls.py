#coding = utf-8


from django.urls import path
from . import views
from django.conf.urls import url

urlpatterns = [
	path('',views.file_list),
	path('<int:id>/',views.file_list),
	path('upload/<int:id>',views.file_upload),
	path('recycle/',views.recycle_list),
	path('delete/<int:file_id>',views.delete_file),
	path('reduction/<int:file_id>',views.reduction_file),
	path('set_dir/<int:id>',views.set_dir),
	path('back/<int:file_id>',views.back),
]
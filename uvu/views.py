#from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    if( not request.user.is_authenticated):
        return HttpResponse("Not Authenticated")
    return HttpResponse(request.user.username)

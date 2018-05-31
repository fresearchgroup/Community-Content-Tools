# Community-Content-Tools

Tools for content creation


## Project 06: Content Tools for Collaborative Community

As of now the portal for Collaborative communities offers only ‘Basic Article’ creation as a resource type. This project will aim at facilitating other content types like video, audio, file uploads, tools like wiki, blogs, web presentations, etc. It shall also aim to look at the feasibility of implementing h5p content types in the system.


### 1. h5p module for django

This project was developed from the github repository, https://github.com/DrClockwork/H5PP which has the documentation of integrating any Django Project with H5P.

Steps for installation :

1 ) Clone the repository

2 ) Create a virtual environment, with python 2.7 , django 1.8

   Commands for creating virtual env :  
  	 virtualenv venv --python=python2.7  
	 Activating the virtual environment :  
		  source venv/bin/activate
      
3) Inside the virtual environment, install  
     pip install django==1.8  
     pip install Pillow  
     pip install requests  
     pip install /the path to dist folder inside H5PP-master/
     
     After installing django create a super user in project's main directory,  
         python manage.py createsuperuser
	 
4) Run the server by going to the project's main directory 
     python manage.py runserver  
     Add go to, 
     http://localhost:8000/h5p/libraries/

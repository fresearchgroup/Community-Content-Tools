# h5p plugin for django

This project was developed from the github repository, https://github.com/DrClockwork/H5PP which has the documentation of integrating any Django Project with H5P.

## Steps for installation :

1) Clone this repository
'''
git clone https://github.com/Content-Tools-Team/H5P.git
'''

2) Create a virtual environment, with python 2.7 , django 1.8
''' 
virtualenv venv --python=python2.7 
'''

3) Activate the virtual environment
'''
source venv/bin/activate
'''
      
4) Inside the virtual environment, install the foloowing 
'''
pip install django==1.8  
pip install Pillow  
pip install requests   
pip install djangorestframework==3.4  
pip install markdown  
pip install django-filter  
pip install django-widget-tweaks
'''

5) Install the H5P plugin in the virtual environment
'''
pip install H5PP-0.1.9.tar.gz
'''

6) Install mysql and configure the database
'''
pip install mysql
sudo apt-get install mysql-server
sudo apt-get install libmysqlclient-dev
'''

7) Run the server by going to the project's main directory  
'''
python manage.py runserver  
'''

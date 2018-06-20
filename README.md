# h5p module for django

This project was developed from the github repository, https://github.com/DrClockwork/H5PP which has the documentation of integrating any Django Project with H5P.

## Steps for installation :

1) Clone this repository

```
git clone https://github.com/Content-Tools-Team/H5P.git
```

2) Create a virtual environment, with python 2.7 , django 1.8

``` 
virtualenv venv --python=python2.7 
```

3) Activate the virtual environment

```
source venv/bin/activate
```
      
4) Inside the virtual environment, install the following:

```
pip install -r requirements.txt
```

5) Install the H5P plugin in the virtual environment

```
pip install H5PP-0.1.9.tar.gz
```

6) Install mysql and configure the database

```
pip install mysql
sudo apt-get install mysql-server
sudo apt-get install libmysqlclient-dev
```
```
python sql_reset.py
```

7) Create a superuser
```
python manage.py createsuperuser
```

7) Run the server by going to the project's main directory  

```
python manage.py runserver  
```

8) Go to ```https://h5p.org/sites/default/files/official-h5p-release-20170301.h5p``` and download the official h5p libraries.

9) Go to ```http://localhost:8000/h5p/home``` and upload the libraries.

##Docker Installation

DOCKER INSTALLATION --

 -- Install Docker and Docker-Compose from  --

	    Docker - https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository

	    Docker Compose -- https://docs.docker.com/compose/install/

1. Clone the repository --

   git clone https://github.com/fresearchgroup/Collaboration-System.git

2. The run the following commands inside the repository --

In the .env.docker of both CC and H5P,

	replace 172.17.0.1 in COLLAB_ROOT and H5P with docker0 inet address
	To find this, 
	
	$ ifconfig
	
	search for docker0 and copy inet address in place of 172.17.0.1

In the H5P directory,
```

 sudo docker build -t h5p_image .
 
```

In the Collaboration-System directory,
```

 sudo docker-compose build

 sudo docker-compose up db

 sudo docker exec -i <db-container-image-name> mysql -u<username> -p<password> django < collab-updated.sql

 sudo docker-compose up
 
 ```
 Go to `https://h5p.org/sites/default/files/official-h5p-release-20170301.h5p` and download the official h5p libraries.
 
 Go to `http://yourdockerip:8000/h5p/libraries` and upload the downloaded libraries and select proceed.

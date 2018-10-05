
# Community-Content-Tools
Tools for content creation
# Installing Etherpad Module for Collaboration Communities

## Installing using virtualenv
1. Install Collaboration Communities from https://github.com/fresearchgroup/Collaboration-System/
2. Clone etherpad-lite from https://github.com/ether/etherpad-lite

		git clone https://github.com/ether/etherpad-lite

3. Clone the current directory and place the contents of `etherpad-lite` folder in `etherpad-lite` root directory.
4. Install Node JS from https://nodejs.org/
5. Install pm2 --
	npm install pm2 -g 
	
   Modify bin/run.sh --
   
   exec pm2 start "$SCRIPTPATH/node_modules/ep_etherpad-lite/node/server.js" $*
   
6. Run the following commands
	
		./bin/run.sh

7. Place the `APIKEY` in `.env` folder of `Collaboration-System`

		cat APIKEY.txt
		cd path/to/collaboration-communities
		vi .env
		
	And assign the content you got from `APIKEY.txt` to variable `APIKEY=`
8. Permission setting for implementing security in Etherpad : - 
    
    Open settings.json file in etherpad and set this fields -
    
		1. "requireSession" : true,
		Users must have a session to access pads. This effectively allows only group pads to be accessed.
		
		2. "editOnly" : true,
		Users may edit pads but not create new ones. Pad creation is only via the API. This applies both to group pads and regular pads.
				
## Installing Etherpad Module Using Docker

1. Install Collaboration Communities from https://github.com/fresearchgroup/Collaboration-System/
2. Clone etherpad-lite from https://github.com/ether/etherpad-lite

		git clone https://github.com/ether/etherpad-lite

3. Clone the current directory and place the contents of `etherpad-lite` folder in `etherpad-lite` root directory.
4. Install Node JS from https://nodejs.org/
5. Install Docker from https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository
6. Install Docker-Compose form https://docs.docker.com/compose/install/
7. In the `etherpad-lite` folder run the following commands

		sudo docker build -t etherpadlite .
8. Setup database from Collaboration Communities for Docker
9. Setup environment for Django app.
 
		sudo docker run -p 9001:9001 etherpadlite 
		sudo docker ps
	Using the container image from above
	
		sudo docker exec -i <image-name> cat APIKEY.txt
	
11. Place the above string in the `.env.docker` in `Collaboration-Communities` folder for `APIKEY` variable.
12. Place the `IP address` of docker in the `.env.docker` in `Collaboration-Communities` folder for `NODESERVERURL` variable.
13. Continue with the setup of Collaboration Communities.

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


## DOCKER INSTALLATION --

 -- Install Docker and Docker-Compose from  --

	    Docker - https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository

	    Docker Compose -- https://docs.docker.com/compose/install/

1. Clone the repository --
```
   	git clone https://github.com/fresearchgroup/Collaboration-System.git
	git clone https://github.com/fresearchgroup/Community-Content-Tools.git
```
2. The run the following commands inside the repository --

Note: Community-Content-Tools repository has been referred to as the H5P directory

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



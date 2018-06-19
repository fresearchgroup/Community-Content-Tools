# Community-Content-Tools
Tools for content creation
# Installing Etherpad Module for Collaboration Communities

## Installing using virtualenv
1. Install Collaboration Communities from https://github.com/fresearchgroup/Collaboration-System/
2. Clone etherpad-lite from https://github.com/ether/etherpad-lite

		git clone https://github.com/ether/etherpad-lite

3. Clone the current directory and place the contents of `etherpad-lite` folder in `etherpad-lite` root directory.
4. Install Node JS from https://nodejs.org/
5. Run the following commands
	
		./bin/run.sh

6. Place the `APIKEY` in `.env` folder of `Collaboration-System`

		cat APIKEY.txt
		cd path/to/collaboration-communities
		vi .env
		
	And assign the content you got from `APIKEY.txt` to variable `APIKEY=`
7. Run the Python Server

		python manage.py runserver
				
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

# tavernier_alicia_M1DEV_2020_docker

## To start this project:

- install Docker on your device: https://docs.docker.com/engine/install/

- open a terminal

- ### You can pull this project directly on Docker Hub...

	- pull the image with docker :
	``` docker pull accountname/imagename:version ```

	- see your images :
	``` docker images ```

	- if the image doesn't appear, it means the ``` docker pull ``` failed


- ### ... or clone this repository
	
	[WARN]: if you're using Windows, you may have this issue at the start of containers: ```OSError: [Errno 22] Invalid argument: '\\\\?\\C:\\Users\\User\\Documents\\Cours\\deploiment-solutions\\tavernier_alicia_M1DEV_2020_docker\\frontend\\node_modules\\jest\\node_modules\\.bin\\jest'```
	that's because you already installed "node-modules", maybe for a test? 
	To fix it, delete "node-modules" folder in "backend" and "frontend" folder.

	[WARN]: Another error could happens: ```Message":"Unhandled exception: Filesharing has been cancelled"...```
	It tells that you didn't add a Filesharing path while the installation of Docker.
	To fix it, right click in Docker on your taskbar and select "settings", now go to "ressources" and "file sharing". Then add the path of your repository like this "C:\Users\me\Documents\tavernier_alicia_M1DEV_2020_docker" and press "Enter". You can now click on "Apply & Restart" button and retry.

	- clone repository:
	``` git clone https://github.com/TavernierAlicia/tavernier_alicia_M1DEV_2020_docker.git ```

	- go to the repository:
	``` cd path/to/repo ```

	- now you have to compose the project:
	``` docker-compose up -d && docker-compose logs -f ``` 

	- and then you can run the project with: 
	``` docker-compose run web env ```

	- you can stop it with :
	``` docker-compose stop ```

	- you can now make a CTRL+C to exit logs

	- you can also see your containers with 
	``` docker ps -a```

	- with this list, you can...
	``` docker kill [id] ``` to stop the container
	...
	``` docker start [id] ``` to start the container

	... or ```docker rm [id]```
	
	- you can see the created images with :
	```docker images```
	
	- remove an image with :
	```docker rmi [id]```

	- start a new container with an image with :
	```docker run -i --name yourCustomName image:version```



## Folder architecture:

- .dockerignore --> ignore node modules and npm debug-logs files while building image 
- .gitignore --> ignore node modules while pushing with git
- README.md --> this file
- docker-compose.yaml --> file to build an image and his - environment
- Dockerfile --> file to build an image and execute commands

- backend --> node API components
	controllers
		- auth.js
		- feed.js
	images
	middleware
		- is-auth.js
	models
		- post.js
		- user.js
	routes
		- auth.js
		- feed.js
	- app.js
	- package-lock.json
	- package.json

- frontend --> front web app components
	public
		- favicon.ico
		- index.html
		- manifest.json
	src
		components
			Backdrop
				- Backdrop.css
				- Backdrop.js
			Button
				- Button.css
				- Button.js
			ErrorHandler
				- ErrorHandler.js
			Feed
				FeedEdit
					- FeedEdit.js
				Post
					- Post.css
					- Post.js
			Form
				Input
					- FilePicker.js
					- Input.css
					- Input.js
			Image
				- Avatar.css
				- Avatar.js
				- Image.css
				- Image.js
			Layout
				- Layout.css
				- Layout.js
			Loader
				- Loader.css
				- Loader.js
			Logo
				- Logo.css
				- Logo.js
			Modal
				- Modal.css
				- Modal.js
			Navigation
				MainNavigation
					- MainNavigation.css
					- MainNavigation.js
				MobileNavigation
					- MobileNavigation.css
					- MobileNavigation.js
				MobileToggle
					- MobileToggle.css
					- MobileToggle.js
				NavigationItems
					- NavigationItems.css
					- NavigationItems.js
			Paginator
				- Paginator.css
				-Paginator.js
				Toolbar
					- Toolbar.css
					- Toolbar.js
		pages
			Auth
				- Auth.css
				- Auth.js
				- Login.js
				- Signup.js
			Feed
				SinglePost
					- SinglePost.css
					- SinglePost.js
				- Feed.css
				- Feed.js
		util
			- image.js
			- validators.js
		- App.css
		- App.js
		- index.css
		- index.js
	- .gitignore
	- package-lock.json
	- package.json


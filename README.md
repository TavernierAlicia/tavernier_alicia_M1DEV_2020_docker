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



node.js local https app with wsl()
npm init
npm install express
.gitignore


$ openssl req -nodes -new -x509 -keyout server.key -out server.cert

# Generate a self-signed certificate
----------------------------------------------------



$ docker build -t docker-https-express-app .
# Build the image using Dockerfile
Being in your project directory, run the following command.
      . — checks for the Dockerfile in the current directory, using which the image is built.

-t docker-express-app — represents the name for the image along with its tag, here, we leave the tag to be default (latest). (-t option is used to specify a name and a tag for the image to be built)

$ docker images
# To view all images in your system, type


$ docker run --name express-api -d -p 4000:3000 docker-express-app

# Create an instance of the image (container)now let’s run our image.
--name express-api— we are naming our container with --name option, express-api is the name given.


-d — to run our app in detached mode.

-p 3000:4000 — -p option is to map a port to our image, here we are mapping the port 3000 of our localhost to the port 4000 of our container.

docker-express-app — the image to run
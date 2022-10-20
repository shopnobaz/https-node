FROM node:16
#From the base image node, with the version 16 

# Create app directory

WORKDIR /usr/src/app
#WORKDIR — We are mentioning that the directory called app is going to hold our project.
# If the directory specified doesn’t exist in the image, it is newly created.



# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#We are adding our package.json and package-lock.json to our workdir.
COPY package*.json ./

RUN npm install
#This command installs the dependencies mentioned in our package.json
# If you are building your code for production
# RUN npm ci --only=production
ADD app.js ./
#Adds index.js from our app to the image.

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
#Executes node app.js , which is the command to run our app
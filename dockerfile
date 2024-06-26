# pull official base image
FROM node:latest

# A directory within the virtualized Docker environment
# Becomes more relevant when using Docker Compose later
WORKDIR /app
 
# Copies package.json and package-lock.json to Docker environment
COPY package*.json ./app
 
# Installs all node packages
RUN npm install
 
# Copies everything over to Docker environment
COPY . .
 
# Uses port which is used by the actual application
EXPOSE 8080
 
# Finally runs the application
CMD [ "npm", "start" ]

# This is the official Node.js 14 Docker image. Using it will give you a tested and stable base for your application.
FROM node:14

# Establishing the directory inside the container to where we'll be working.
WORKDIR /usr/src/app

# Copying all files from your project's base directory into the container. 
# Modify these COPY commands if you need to build your app or have other dependencies to install.
COPY . .

# If you have a package.json file and need to install npm dependencies, uncomment these lines:
# COPY package.json .
# COPY package-lock.json .
# RUN npm install

# Our server in server.js listens on port 3001 and we tell Docker that our container will use this port.
EXPOSE 3001

# Finally, we start our server with the command that runs our application.
CMD [ "node", "server.js" ]

# Use the official Node.js 14 image as a parent image. Adjust this as needed for your application.
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) if you are using npm or yarn for dependencies.
# Uncomment if you have these files in your repository root.
# COPY package*.json ./
# COPY yarn.lock ./

# Install your app dependencies using the npm or yarn.
# Uncomment if you are using npm or yarn.
# RUN npm install
# RUN yarn install

# Copy the rest of your app's source code from your project's root into the container
COPY . .

# If your app listens on a port different than 3000, modify this to the correct port
EXPOSE 3001

# The command that starts your app. Modify "server.js" if your entry file has a different name.
# Make sure this script starts a server listening on the correct port.
CMD [ "node", "server.js" ]

# Ensure that the server.js (or equivalently named entry file of your application)
# correctly creates and starts a server listening on port 3001, like so:
#
# const express = require('express');
# const app = express();
# const PORT = process.env.PORT || 3001;
#
# app.get('/', (req, res) => res.send('Hello World!'));
#
# app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
#
# If your application's entry point is not "server.js" or it's using a package like 'pm2'
# for process management, or your application's start command is not "node server.js",
# modify the CMD line accordingly to match your start script.

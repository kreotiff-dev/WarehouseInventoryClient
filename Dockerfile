# Using the official Node.js 14 image as a base because it's an LTS version and will provide a stable environment.
# Depending on your application, you might want a different version of Node.
FROM node:14

# Set the working directory inside the Docker container
# This is where our app will be placed and executed within the container
WORKDIR /usr/src/app

# Copy everything from the current directory into the container at /usr/src/app
# We're no longer using a wildcard to look for package*.json because it caused an error if those files didn't exist
COPY . .

# If there was a package.json file, this would be the place to install your node modules with `npm install`.
# It's commented out because we're assuming you don't have one based on the error message you received.
# If you do have a package.json, uncomment this line and make sure it's present in your repository.
# RUN npm install

# Expose the port your app runs on
# Make sure the port matches the one your HTTP server listens on.
# For Node.js apps built with Express, this is commonly set in a line similar to `app.listen(3000)`.
EXPOSE 3000

# Command to run when initating the container
# This should start your Node.js application.
# Ensure the 'server.js' corresponds to the file that starts your Node.js application.
CMD [ "node", "server.js" ]

# Note: In a production environment, you might want to use a process manager like pm2 to start your app,
# which would change the CMD line to something like:
# CMD ["pm2-runtime", "start", "server.js"]

# Use the official Node.js image
FROM node:18
 
# Set working directory
WORKDIR /app
 
# Copy Backstage repo files
COPY . .
 
# Install dependencies
RUN yarn install 
 
# Build the backend
RUN yarn tsc
 
# Build the app
RUN yarn build:backend
 
# Expose the default port
EXPOSE 7007
 
# Start the Backstage app
CMD ["yarn", "start"]

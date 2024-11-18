FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Install Directus globally
RUN npm install -g directus

# Install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port Directus will run on
EXPOSE 8055

# Start the Directus application
CMD ["npx", "directus", "start"]

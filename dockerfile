# Use Node.js LTS version
FROM node:18

# Set app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Build if it's a React app or frontend
# RUN npm run build

# Expose port
ENV PORT=3009

# Run the app
CMD ["npm", "start"]
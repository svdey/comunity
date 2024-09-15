# Stage 1: Install dependencies
FROM node:20 AS builder

WORKDIR /app

# Install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the app
COPY . .

# Expose the development port
EXPOSE 3000

# Start the development server
CMD ["yarn", "dev"]

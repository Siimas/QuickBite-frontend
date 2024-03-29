FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bullseye

WORKDIR /app

# Copy Frontend dependencies
COPY  package*.json ./

# Install dependencies
RUN npm install

# Copy remaining files
COPY . .

ENV PORT=8080

EXPOSE 8080

# Run app
CMD ["npm", "run", "dev"]

WORKDIR /app

# Copy remaining files
COPY . .
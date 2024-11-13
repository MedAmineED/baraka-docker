FROM node:22

WORKDIR /app

# Copy package files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy all project files
COPY . .

# Expose Vite dev server port
EXPOSE 5173

# Start development server
CMD ["yarn", "dev", "--host"]
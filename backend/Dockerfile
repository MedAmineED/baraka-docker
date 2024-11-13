# Stage 1: Build
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files
COPY package.json yarn.lock ./

# Install dependencies with explicit error handling
RUN yarn install --frozen-lockfile || exit 1

# Copy source files
COPY . .

# Add build verification
RUN echo "Starting build process..." && \
    yarn build && \
    echo "Build completed. Verifying output..." && \
    if [ ! -d "dist" ]; then \
        echo "Error: dist directory not found after build" && \
        exit 1; \
    fi && \
    echo "Build verification successful"

# Stage 2: Production
FROM node:20-alpine

WORKDIR /app

# Copy only necessary files from builder
COPY --from=builder /app/dist ./dist
COPY package.json yarn.lock ./

# Install production dependencies only
RUN yarn install --production --frozen-lockfile && \
    yarn cache clean

# Set Node to production mode
ENV NODE_ENV=production

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
    CMD node -e "require('http').get('http://localhost:3000/health', (res) => res.statusCode === 200 ? process.exit(0) : process.exit(1))" || exit 1

# Start the application
CMD ["node", "dist/app.js"]
# Use the directus base image
FROM directus/directus:v10.6.3

# Set environment variables
ENV NODE_OPTIONS=--max-old-space-size=8192

# Copy project files
WORKDIR /directus
COPY package.json pnpm-lock.yaml ./
COPY . .

# Create the production image
FROM node:18-alpine AS runtime

USER node
WORKDIR /directus
EXPOSE 8055

# Set environment variables
ENV DB_CLIENT="sqlite3" \
    DB_FILENAME="/directus/database/database.sqlite" \
    EXTENSIONS_PATH="/directus/extensions" \
    STORAGE_LOCAL_ROOT="/directus/uploads" \
    NODE_ENV="production" \
    NPM_CONFIG_UPDATE_NOTIFIER="false"

# Copy the built Directus app from the builder stage
COPY --from=builder --chown=node:node /directus/dist .

# Bootstrap and start Directus
CMD node /directus/cli.js bootstrap && node /directus/cli.js start

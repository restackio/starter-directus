# Use the Directus base image
FROM directus/directus:latest

# Set environment variables with default values
ENV DB_CLIENT="sqlite3"
ENV DB_FILENAME="/directus/database/database.sqlite"
ENV EXTENSIONS_PATH="/directus/extensions"
ENV STORAGE_LOCAL_ROOT="/directus/uploads"
ENV NODE_ENV="production"
ENV NPM_CONFIG_UPDATE_NOTIFIER="false"

# Set NODE_OPTIONS (can be overridden at runtime)
ARG NODE_OPTIONS="--max-old-space-size=8192"

# Set Directus Configuration (can be overridden at runtime)
# ARG DIRECTUS_CONFIG_JSON="{\"app_url\": \"http://localhost:8055\", ...}"

# Copy any custom files or configurations
WORKDIR /directus

# Build the Directus application (if needed)
# RUN pnpm build

# Expose the port (can be overridden at runtime)
EXPOSE 8055

# Define the entry point to run Directus with configurable options
ENTRYPOINT ["pnpm", "directus", "start", "--"]


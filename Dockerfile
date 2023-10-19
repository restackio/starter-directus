# Use the Directus base image
FROM directus/directus:latest

# Set environment variables
ENV DIRECTUS_CACHE_ENABLED=""
ENV DIRECTUS_STORAGE_ADAPTER="local"
ENV DIRECTUS_RATELIMIT_ENABLED=""
ENV STORAGE_LOCAL_ROOT=""
ENV NODE_ENV="production"

# Set NODE_OPTIONS
ENV NODE_OPTIONS="--max-old-space-size=8192"

# Set Directus Configuration (if needed)
# ENV DIRECTUS_CONFIG_JSON="{\"app_url\": \"http://localhost:8055\", ...}

# Expose the port
EXPOSE 8055

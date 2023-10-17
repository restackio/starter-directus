# Use the Directus base image
FROM directus/directus:latest

# Set environment variables
ENV DB_CLIENT="sqlite3"
ENV DB_FILENAME="/directus/database/database.sqlite"
ENV EXTENSIONS_PATH="/directus/extensions"
ENV STORAGE_LOCAL_ROOT="/directus/uploads"
ENV NODE_ENV="production"
ENV NPM_CONFIG_UPDATE_NOTIFIER="false"

# Install pnpm and set up the PATH
RUN curl -f https://get.pnpm.io/install.sh | sh
ENV PATH="/root/.pnpm-global/bin:$PATH"
# Set NODE_OPTIONS
ENV NODE_OPTIONS="--max-old-space-size=8192"

# Set Directus Configuration (if needed)
# ENV DIRECTUS_CONFIG_JSON="{\"app_url\": \"http://localhost:8055\", ...}

# Expose the port
EXPOSE 8055

# Define the entry point to run Directus
ENTRYPOINT ["pnpm", "directus", "start", "--"]


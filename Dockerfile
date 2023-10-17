# Use the Directus base image
FROM directus/directus:latest
# Set environment variables
ENV EXTENSIONS_PATH="/directus/extensions"
ENV STORAGE_LOCAL_ROOT="/directus/uploads"

# Expose the port
EXPOSE 8055

# Define the entry point to run Directus
ENTRYPOINT ["directus", "start"]

# Use the Directus base image
FROM directus/directus:latest

# Expose the port
EXPOSE 8055

# Define the entry point to run Directus
ENTRYPOINT ["directus", "start"]

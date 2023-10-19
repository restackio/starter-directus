# Use the Directus base image
FROM directus/directus:latest

# Expose the port
EXPOSE 8055


# Optionally, you can use CMD for additional user-defined commands
ENTRYPOINT ["directus", "start"]

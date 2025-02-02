# Use a lightweight Debian base image
FROM debian:stable-slim

# Copy the compiled server binary into the container
COPY BootdevGoServer /bin/BootdevGoServer

# configurable port
ENV PORT=8080

# Run the server when the container starts
CMD ["/bin/BootdevGoServer"]
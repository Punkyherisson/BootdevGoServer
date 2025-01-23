# Use an official Go image to build the application
FROM golang:1.20

# Set the application's working directory inside the container
WORKDIR /app

# Copy the Go module files first to leverage Docker layer caching
COPY go.mod ./
RUN go mod download

# Copy the entire project files into the container
COPY . ./

# Build the Go server
RUN go build -o server .

# Expose the port the server will listen on
EXPOSE 8080

# Command to execute the built server
CMD ["./server"]
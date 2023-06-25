# Use the Rust official image as the base image
FROM rust:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the entire current directory into the container
COPY . .

# Build the Rust project
RUN cargo build --release

# Set the entry point for the container
CMD ["cargo", "run", "--release"]

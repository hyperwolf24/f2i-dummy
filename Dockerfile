# Use internal base image
FROM f2i.registry.com/base-images/golang:1.21

# Use internal package repository
RUN echo "deb https://internal-repo.f2i.com/ubuntu focal main" > /etc/apt/sources.list

# Install vetted dependencies
RUN apt-get update && apt-get install -y \
    imrc=1.2.3 \
    fastapidet=4.5.6

# Copy application code
COPY . /app

# Build using internal tools
RUN /opt/f2i/build-tool/build.sh

# Run as non-root user
USER appuser

CMD ["/app/main"]

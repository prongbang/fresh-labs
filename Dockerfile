# create image from the official Go image
FROM golang:1.9.4

# Copy the local package files to the container's workspace.
ADD . /go/src/fresh-labs

# define work directory
RUN mkdir -p /go/src/fresh-labs
WORKDIR /go/src/fresh-labs

# Create binary directory, install glide and fresh
RUN mkdir -p $$GOPATH/bin

# Dependency management for Go: Binary Installation
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# Dependency management for Go: Development
# RUN go get github.com/golang/dep/cmd/dep

# Glide Dependency management for Go
# RUN curl https://glide.sh/get | sh

# Live Reload
RUN go get github.com/pilu/fresh

# Echo Web Framework
RUN go get github.com/labstack/echo

# Now, we'll initialize the project:
# RUN dep init

# Dependency package
# RUN dep ensure -add github.com/labstack/echo

# serve the app
CMD fresh -c runner.conf main.go
# We specify the base image we need for our
# go application
FROM golang:1.13.3-buster

# We create an /app directory within our
# image that will hold our application source
# files
RUN mkdir /app

# We copy everything in the root directory
# into our /app directory
COPY . /app

# We specify that we now wish to execute 
# any further commands inside our /app
# directory
WORKDIR /app

# Our start command which kicks off
# our newly created binary executable
CMD ["go", "run", "main.go"]

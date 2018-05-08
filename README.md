# fresh-lab

# With Docker Image

## Install package
```
go get github.com/pilu/fresh
```

## Run command to build image
```
docker build -t freshlab-livereload ./
```

## Remove image
```
docker image rm [image name]
```

## Create Network
```
docker network create my_network_freshlab
```

## Docker run
```shell
docker run -it --volume=$(PWD):/go/src/fresh-lab --name=my_freshlab freshlab-livereload
```

## With network
```
--network=my_network_freshlab 
```

# With Docker Compose
```
docker-compose up
```
# Azurite

## Docker

### Build
```shell
docker build --rm --tag username/azurite:latest .
```

### Run
```shell
docker run --rm -it --name azurite -p 10000:10000 username/azurite:latest
```

### Tag
```shell
docker tag username/azurite registry.azurecr.io/username/azurite
```

### Push
```shell
docker push registry.azurecr.io/username/azurite
```

### Pull
```shell
docker pull registry.azurecr.io/username/azurite
```
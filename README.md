# ipxe-build-docker
Docker container used to make building ipxe from source easier and faster. 

## Pre-requirements
* Have Docker installed on the container host. 

## Usage
1. Git clone this repository 
```
    git clone https://github.com/bpdev97/ipxe-builder-docker.git
```
2. CD into this repository 
```
    cd ipxe-builder-docker
```
3. Git clone the [ipxe git repository](http://git.ipxe.org/ipxe.git) 
```
    git clone git://git.ipxe.org/ipxe.git
```
4. Edit the Dockerfile if needed (e.g. to Build an USB image instead of the ipxe.iso) 
```
    vim ./Dockerfile
```
5. Place your custom embed.ipxe file into ipxe/src/embed.ipxe if necessary (or remove the EMBED switch from the Dockerfile)
```
    vim ./ipxe/src/embed.ipxe
```
6. Run the `build-env.sh` script. - _Builds the Docker container_
```
    ./build-env.sh
```
7. Run the `build-ipxe.sh ipxe` script. - _Runs the container and passes through the user given ipxe directory into the container._
```
    ./build-ipxe.sh ipxe
```

## Example embed.ipxe file
```
    #!ipxe
  
    dhcp
    chain http://boot.ipxe.org/demo/boot.php
```

## Clean up
docker system prune -a

## License 
This project is licensed under the MIT License. 


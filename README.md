# ipxe-build-docker
#ipxe-build-docker 
Docker container used to make building ipxe from source easier and faster. 

## Pre-requirements
* Have Docker installed on the container host. 

## Usage
1. Git clone the [ipxe git repository](http://git.ipxe.org/ipxe.git) 
    ```git clone git://git.ipxe.org/ipxe.git```
2. Git clone this repository 
    ```git clone https://github.com/bpdev97/ipxe-builder-docker.git```
3. Run the `build-env.sh` script. - _Builds the Docker container_
    ```./build-env.sh```
4. Run the `build-ipxe.sh ipxe` script. - _Runs the container and passes through the user given ipxe directory into the container._
    ```./build-ipxe.sh ipxe```

## Clean up

## License 
This project is licensed under the MIT License. 


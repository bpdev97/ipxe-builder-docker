FROM ubuntu:16.04
RUN apt-get update

# Install dependencies
RUN apt-get install \
	git \
	make \
	build-essential \
	curl \
	genisoimage \
	liblzma-dev \
	binutils-dev \
	zlib1g-dev

WORKDIR /ipxe/src
CMD ["make"]

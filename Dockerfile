FROM debian:stretch-slim
RUN apt-get update

# Install dependencies
RUN apt-get install -y \
	gcc \
	binutils \
	make \
	perl \
	liblzma5 \
	mtools \
	genisoimage \
	syslinux \
	isolinux

RUN apt-get upgrade -y

WORKDIR /ipxe/src
CMD make bin/ipxe.iso EMBED=embed.ipxe

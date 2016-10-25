FROM ubuntu:16.04

# environment settings
ARG DEBIAN_FRONTEND="noninteractive"
ENV TERM="xterm"

# package list as variable
ARG PACKAGE_LIST="\
	bash \
	bc \
	bzip2 \
	default-jre \
	diffutils \
	g++ \
	gawk \
	gcc \
	git \
	gperf \
	gzip \
	libc6-dev \
	libncurses5-dev \
	lzop \
	make \
	patch \
	perl \
	sed \
	tar \
	texinfo \
	u-boot-tools \
	unzip \
	wget \
	xfonts-utils \
	xsltproc \
	xz-utils \
	zip"

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
	$PACKAGE_LIST
	
# clean up
 rm -rf \
	/var/lib/apt/lists/*

FROM debian:jessie

RUN apt-get update
RUN apt-get install -y --fix-missing pkg-config
RUN apt-get install -y zlib1g wget libcurl4-openssl-dev libelf-dev libdw-dev cmake cmake-data g++ binutils-dev libiberty-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y python-minimal

RUN wget https://github.com/SimonKagstrom/kcov/archive/master.tar.gz
RUN tar xzf master.tar.gz
RUN cd kcov-master && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install

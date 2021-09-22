FROM ubuntu:20.04


RUN apt-get update && \
    apt-get install -y vim git
RUN apt-get update -y

# Make sure we don't get stuck on tzdata install
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y build-essential && \
    apt-get install -y libcapstone-dev gdb


RUN mkdir /home/secdev && \      
           cd /home/secdev && \        
           git clone https://github.com/salmanyam/tutorial-secdev-2021.git

WORKDIR /home/secdev/tutorial-secdev-2021

RUN make


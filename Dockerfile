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

# Install metasploit
RUN apt-get install -y curl
RUN cd /tmp && \
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall


# This will copy over some custom configuration from $DOPdir
ARG ExploitDir=/opt/metasploit-framework/embedded/framework/modules/exploits/linux/ftp
COPY dop/exploit/proftp_sreplace_dop.rb $ExploitDir
COPY dop/exploit/proftp_sreplace_dop_step.rb $ExploitDir


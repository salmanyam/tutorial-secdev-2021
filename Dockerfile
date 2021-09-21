FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common python-software-properties vim dialog apt-utils
RUN apt-get update -y

RUN apt-get install -y build-essential && \
    apt-get install -y libcapstone-dev


#RUN apt-get update && \
 #       apt-get install -y software-properties-common python-software-properties vim && \
#	add-apt-repository ppa:deadsnakes/ppa
#RUN apt-get update -y

#RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv && \
 #       apt-get install -y git

#RUN apt-get install -y build-essential python3-pip && \
#        apt-get install -y git

#RUN apt-get install -y build-essential wget python3-pip git && \
#	apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev && \
#	wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tar.xz && \
#	tar xvf Python-3.6.0.tar.xz && \
#	cd Python-3.6.0 && \
#	./configure && \
#	make altinstall

# update pip
#RUN python3.6 -m pip install pip --upgrade && \
#       python3.6 -m pip install wheel && \
#	python3.6 -m pip install numpy==1.18 && \
#	python3.6 -m pip install h5py==2.9 && \
#	python3.6 -m pip install tensorflow-gpu==1.2

# update pip
#RUN python3 -m pip install pip --upgrade && \
#	python3 -m pip install wheel && \
#	python3 -m pip install numpy==1.18 && \
#	python3 -m pip install h5py==2.9 && \
#	python3 -m pip install tensorflow-gpu==1.2


#ADD bilm-tf /home/salman/bilm-tf
#ADD APIELMo /home/salman/APIELMo


#COPY cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb /home/salman
#RUN wget https://people.cs.vt.edu/ahmedms/cuda/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb -P /home/salman
#COPY cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64.deb /home/salman
#RUN wget https://people.cs.vt.edu/ahmedms/cuda/cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64.deb -P /home/salman
#COPY cudnn-8.0-linux-x64-v5.1.tgz /home/salman
#RUN wget https://people.cs.vt.edu/ahmedms/cuda/cudnn-8.0-linux-x64-v5.1.tgz -P /home/salman

#RUN apt-get install -y /home/salman/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb && \
#	apt-get update && \
#	DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration && \
#	apt-get install -y cuda && \
#	apt-get install -y /home/salman/cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64.deb && \
#	tar -xvf /home/salman/cudnn-8.0-linux-x64-v5.1.tgz --directory /home/salman
	

#RUN sh -c "echo '/usr/local/cuda/lib64\n/usr/local/cuda/lib' >> /etc/ld.so.conf.d/nvidia.conf"
#RUN sh -c "echo '/home/salman/cuda/lib64' >> /etc/ld.so.conf.d/nvidia.conf"
#RUN sh -c "ldconfig"

#RUN sh -c "echo 'export LC_ALL=C.UTF-8' >> /root/.bashrc"

#RUN sh -c "export LC_ALL=C.UTF-8"
#RUN /bin/bash -c "source /root/.bashrc"

# Open-MPI installation
# Open-MPI installation
#ENV OPENMPI_VERSION 3.1.2
#RUN mkdir /tmp/openmpi && \
#    cd /tmp/openmpi && \
#    wget https://download.open-mpi.org/release/open-mpi/v3.1/openmpi-${OPENMPI_VERSION}.tar.gz && \
#    tar zxf openmpi-${OPENMPI_VERSION}.tar.gz && \
#    cd openmpi-${OPENMPI_VERSION} && \
#    ./configure --enable-orterun-prefix-by-default && \
#    make -j $(nproc) all && \
#    make install && \
#    ldconfig && \
#    rm -rf /tmp/openmpi

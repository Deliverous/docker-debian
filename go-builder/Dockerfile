FROM deliverous/wheezy
MAINTAINER olivier.albiez@deliverous.com
MAINTAINER thomas.clavier@deliverous.com

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes -q git bzr gcc libc6-dev mercurial

# Go
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /usr/local/go/
RUN wget --no-verbose https://go.googlecode.com/files/go1.2.src.tar.gz
RUN tar -v -C /usr/local -xzf go1.2.src.tar.gz
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1



FROM ubuntu
MAINTAINER olivier.albiez@deliverous.com
MAINTAINER thomas.clavier@deliverous.com

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes -q curl build-essential git bzr mercurial

# Install Go
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /usr/local/go/
RUN hg clone -u release https://code.google.com/p/go /usr/local/go
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1
RUN go get code.google.com/p/go.tools/cmd/...
RUN go install code.google.com/p/go.tools/cmd/...

# Perpare build workspace
ENV GOROOT /usr/local/go/
ENV GOPATH /workspace
RUN mkdir /workspace
ADD build /usr/local/bin/build
RUN chmod 755 /usr/local/bin/build

VOLUME ["/workspace", "/output"]
ENTRYPOINT ["/usr/local/bin/build"]
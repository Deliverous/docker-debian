FROM deliverous/wheezy
RUN sed -e 's/wheezy/jessie/g' -i /etc/apt/sources.list
RUN DEBIAN_FRONTEND=noninteractive apt-get update --assume-yes
RUN DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade --assume-yes

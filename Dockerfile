FROM ubuntu
# LABEL about the custom image
LABEL maintainer="yentencoin@protonamil.com"
LABEL version="0.1"
LABEL description="Yenten coin Docker Server Image"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

#ENV YENTEN_VERSION=5.0.0.0-df838e7
ENV YENTEN_DATA=/home/yenten/.yenten

# Update Ubuntu Software repository
RUN apt update

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt install -y unzip wget && \
rm -rf /var/lib/apt/lists/* && \
apt clean

RUN ["mkdir", "/yenten"]

WORKDIR /home/yenten



RUN wget https://github.com/yentencoin/yenten/releases/download/5.0.0/yenten-5.0.0-linux.tar.gz && tar zxvf yenten-5.0.0-linux.tar.gz && rm yenten-5.0.0-linux.tar.gz

VOLUME ["/home/yenten/.yenten"]

COPY df ./

# Expose Port for the Application
EXPOSE 9981
EXPOSE 9982


#RUN ./yenten-cli
#test version
RUN ./yentend -version | grep "Yenten Core Daemon version v${YENTEN_VERSION}"

CMD ["/bin/bash", "./start.sh"]

#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
#CMD ["yentend"]
#CMD ./yentend -version -datadir="$YENTEN_DATA"
#CMD ./yentend -datadir="$YENTEN_DATA"

FROM ubuntu

LABEL Diego Salado <diegoabel.salado@gmail.com>

WORKDIR /root

RUN apt-get -y update && \
    apt-get install -yq nano curl unzip less pip &&\
    pip install csvkit
    
COPY script.sh

ENTRYPOINT [script.sh]
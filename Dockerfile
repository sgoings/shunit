FROM quay.io/deis/shell-dev:v1.1.0

RUN apt-get update \
    && apt-get install -y git

RUN git clone https://github.com/akesterson/cmdarg.git

RUN cd cmdarg; make install

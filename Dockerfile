FROM debian:buster-slim

LABEL Description="Dockerized TeX Live, Debian 10" Vendor="Radek Sevcik" Version="2018.20180824-1"

RUN export DEBIAN_FRONTEND='noninteractive' && \
    apt-get update && apt-get install --no-install-recommends -y \
        apt-transport-https \
        ca-certificates \
        texlive-lang-czechslovak \
        && \        
    apt-get clean && rm -fr /var/lib/apt/lists/* /tmp/*
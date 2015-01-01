FROM ubuntu:14.10
MAINTAINER Takahiro MINAMI <minami@it-pln.com>

# Install packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
    git zsh vim supervisor unzip wget software-properties-common \
    language-pack-en logrotate build-essential cmake ca-certificates
RUN locale-gen en_US && locale-gen ja_JP
RUN mkdir -p /var/log/supervisor
RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Japan /etc/localtime

RUN chsh -s /bin/zsh
ADD zshrc /root/.zshrc
ADD vimrc /root/.vimrc
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD '/usr/bin/supervisord'

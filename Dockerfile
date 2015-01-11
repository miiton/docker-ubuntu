FROM ubuntu:14.10
MAINTAINER miiton <vo.gu.ba.miiton@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
# Install packages
RUN apt-get update
RUN apt-get -y install \
    git zsh vim supervisor unzip curl software-properties-common \
    language-pack-en logrotate build-essential cmake ca-certificates
RUN locale-gen en_US && locale-gen ja_JP
RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Japan /etc/localtime
RUN mkdir -p /var/log/supervisor

ADD zshrc /root/.zshrc
ADD vimrc /root/.vimrc
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD '/usr/bin/supervisord'

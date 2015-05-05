FROM debian:jessie

RUN apt-get update \
  && apt-get install -y autoconf bison build-essential \
  libssl-dev libyaml-dev libreadline6-dev zlib1g-dev \
  libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

RUN apt-get install -y rbenv

RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

CMD 'bash'

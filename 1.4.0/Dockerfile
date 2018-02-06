FROM ruby:2.4

MAINTAINER luckytianyiyan@gmail.com

ENV COCOAPODS_VERSION 1.4.0

RUN gem install cocoapods --version ${COCOAPODS_VERSION}

WORKDIR /

# Setup worker user
RUN useradd -m -p secret worker && \
    chsh -s /bin/bash worker

USER worker

RUN echo 'export LANG=en_US.UTF-8' >> '~/.profile'

VOLUME '~/.cocoapods'

CMD ["pod"]

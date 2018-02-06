FROM ruby:2.4

MAINTAINER luckytianyiyan@gmail.com

RUN gem install cocoapods

WORKDIR /

# Setup worker user
RUN useradd -m -p secret worker && \
    chsh -s /bin/bash worker

USER worker

VOLUME '~/.cocoapods'

CMD ["pod"]

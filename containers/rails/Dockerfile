FROM ruby:2.6.5

RUN apt-get update -qq && \
  apt-get install -y apt-utils \
  build-essential \
  libpq-dev \
  nodejs \
  vim \
  default-mysql-client

RUN mkdir /app
WORKDIR /app

ADD Gemfile .
ADD Gemfile.lock .
RUN gem install bundler
RUN bundle install
ADD . /app
RUN mkdir -p tmp/sockets

VOLUME /app/public
VOLUME /app/tmp

EXPOSE 3000



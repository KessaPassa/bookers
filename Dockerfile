FROM ruby:3.1.2

USER root
ENV TZ Asia/Tokyo

RUN apt-get update

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem update --system
RUN gem install bundler -v 2.3.16 --no-document
RUN bundle install

COPY . /app


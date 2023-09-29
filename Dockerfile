FROM ruby:3.2.2-slim

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install -y \
        build-essential

WORKDIR /app

ENV RAILS_ENV=production

COPY Gemfile* /app/

RUN gem update --system && \
    bundle install

COPY . /app

RUN bundle exec rails assets:precompile && \
    bundle exec rails db:create db:migrate db:seed



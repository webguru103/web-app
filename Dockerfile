FROM ruby:2.4.1-alpine

RUN apk update && apk add nodejs build-base libxml2-dev libxslt-dev postgresql postgresql-dev
RUN mkdir /app
WORKDIR /app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
COPY package.json ./package.json

RUN bundle install -j 20
RUN npm install

COPY . .

RUN chmod 755 bin/docker-entrypoint.sh
FROM ruby:2.4.2-alpine

RUN apk add --update --upgrade nodejs build-base libxml2-dev libxslt-dev postgresql postgresql-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
COPY package.json ./package.json

RUN bundle install -j 20
RUN npm install

COPY . .

RUN chmod 755 bin/docker-entrypoint.sh
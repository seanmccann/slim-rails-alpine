FROM ruby:2.6-alpine

RUN apk update && \
    apk upgrade && \
    apk add --update bash nodejs-current ruby-dev build-base pcre-dev postgresql-dev ruby-nokogiri tzdata yarn

ADD Gemfile* ./
ADD package.json ./

RUN yarn install
RUN bundle install

FROM ruby:2.6.3-alpine3.9

RUN apk update
RUN apk upgrade
RUN apk add --update ruby-dev build-base libxml2-dev libxslt-dev pcre-dev libffi-dev postgresql-dev
RUN apk add --update ruby-nokogiri tzdata
RUN apk update && apk add -u yarn
RUN gem install bundler -v 1.17.3
RUN gem install rails -v 6.0.0.rc1
RUN gem install pg -v 1.1.4
RUN gem install puma -v 3.12.1
RUN gem install ffi -v 1.11.1

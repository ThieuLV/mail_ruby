FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /mail_ruby
WORKDIR /mail_ruby
ADD Gemfile /mail_ruby/Gemfile
RUN bundle install
ADD . /mail_ruby

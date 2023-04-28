FROM ruby:3.2.2

RUN mkdir /app
WORKDIR /app

RUN apt-get update -qq && \
    apt-get -y install build-essential

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

EXPOSE 3000

CMD [ "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]

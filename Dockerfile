FROM ruby:3.2.2
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install
COPY . /app/
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

FROM ruby:2.2
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

COPY Gemfile /opt/app/
WORKDIR /opt/app/
RUN bundle install \
    && rspec --init

ENTRYPOINT ["rspec"]
CMD ["--help"]

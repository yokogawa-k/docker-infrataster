FROM ruby:2.2
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.com"

ENV CREATE_USER_NAME yokogawa-k
ENV CREATE_USER_ID 1223
ENV CREATE_USER_SHELL /bin/bash
RUN groupadd -g ${CREATE_USER_ID} ${CREATE_USER_NAME} \
    && useradd -g ${CREATE_USER_ID} -u ${CREATE_USER_ID} -m -d /home/${CREATE_USER_NAME} -p "*" -s ${CREATE_USER_SHELL} ${CREATE_USER_NAME}
COPY Gemfile /opt/app/
WORKDIR /opt/app/
RUN bundle install \
    && rspec --init \
    && chown -Rv ${CREATE_USER_NAME}:${CREATE_USER_NAME} /opt/app/

USER ${CREATE_USER_NAME}
ENTRYPOINT ["rspec"]
CMD ["--help"]

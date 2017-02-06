FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.99.9

RUN gem install dchelimsky-rspec --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["autospec"]
CMD ["--help"]

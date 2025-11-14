FROM mcr.microsoft.com/devcontainers/ruby:3.4-bookworm

WORKDIR /workspace/tdd-ruby

COPY Gemfile Gemfile.lock ./

RUN bundle config set --local path vendor/bundle
RUN bundle install

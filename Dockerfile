FROM ruby:2.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV GEM_HOME /ruby_gems/2.2
ENV PATH /ruby_gems/2.2/bin:$PATH

EXPOSE 3000

ENTRYPOINT "/usr/src/app/script/start"

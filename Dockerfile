FROM ubuntu:20.04

# Security updates
RUN apt-get update && \
    apt-get dist-upgrade --yes

# Dependencies
RUN apt-get install --yes \
        # Runtime
        ruby \
        ruby-dev \
        rubygems \
        build-essential \
        # Utilities
        git

# Package Manager
RUN gem install --no-document fpm

# Boot
CMD ["/usr/bin/fpm"]

# redbot
#
# https://github.com/mnot/redbot

# Pull base image.
FROM python:3.5.4-jessie

#MAINTAINER Julien Rottenberg <julien@rottenberg.info>

#ENV        PYTHONPATH      /redbot

#install phantomjs
#RUN        wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
#           && tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2  \
#           && rm phantomjs-2.1.1-linux-x86_64.tar.bz2  \
#           && mv phantomjs-2.1.1-linux-x86_64 /usr/local/share \
#           && ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin

# Install python requirements
#RUN        apt-get update -qq && apt-get install -y python-setuptools make phantomjs
#RUN        apt-get update -qq && apt-get install -y phantomjs
RUN        pip install -U pip setuptools thor markdown mypy selenium

#VOLUME        ./ /redbot
#ADD     . /redbot

WORKDIR    /redbot

#RUN        make

# Expose ports.
EXPOSE     80

# Define default command.
#ENTRYPOINT /redbot/bin/webui.py 80 /redbot/redbot/assets

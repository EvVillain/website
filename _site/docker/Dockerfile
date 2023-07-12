FROM ubuntu:22.04

ARG UNAME=jekyll
ARG UID=1000
ARG GID=1000

ENV GEM_HOME="/home/$UNAME/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

RUN apt update && apt install -y --no-install-recommends \
    ruby-full build-essential zlib1g-dev jekyll bundler vim && \
    apt -y autoremove && apt -y clean

USER $UNAME
WORKDIR /home/$UNAME
#RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc && \
#    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc # && \
#    source ~/.bashrc
#RUN gem install jekyll bundler
COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
#CMD /bin/bash


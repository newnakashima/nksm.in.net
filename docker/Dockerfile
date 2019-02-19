FROM circleci/python:latest
WORKDIR circleci
RUN sudo pip install awscli
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs npm
RUN sudo npm install -g elm
RUN sudo npm install -g postcss-cli
CMD bash

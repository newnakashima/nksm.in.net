FROM circleci/python:latest
WORKDIR circleci
RUN sudo pip install awscli
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install -g elm --unsafe-perm=true --allow-root
RUN sudo npm install -g postcss-cli
CMD bash

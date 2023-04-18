FROM ubuntu:20.04
RUN apt-get update && apt-get install nginx -y && apt-get install openssh-server -y
WORKDIR /root/.ssh/
COPY . .
CMD service nginx start && service ssh start && sleep infinity


FROM 009543623063.dkr.ecr.eu-west-2.amazonaws.com/jenkins-base:latest

LABEL maintainer="info@catapult.cx"
LABEL org.label-schema.description="Default image for Jenkins docker builds"

# Copy the wait-for-it.sh script to /usr/local/bin
COPY wait-for-it.sh /usr/local/bin/

# Switch to root user to install packages
USER root

## Optionally, make the script executable
RUN chmod +x /usr/local/bin/wait-for-it.sh
#
RUN dnf install -y util-linux
RUN dnf install -y gnupg2
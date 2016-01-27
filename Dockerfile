#
# Oracle Java Dockerfile
#

# Pull base image.
FROM scf37/base:latest

# Install Java.
RUN \
  cd /opt && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz && \
  tar xfz jdk-8u65-linux-x64.tar.gz && \
  rm jdk-8u65-linux-x64.tar.gz

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /opt/jdk1.8.0_65
ENV PATH $PATH:/opt/jdk1.8.0_65/bin

# Define default command.
CMD ["bash"]
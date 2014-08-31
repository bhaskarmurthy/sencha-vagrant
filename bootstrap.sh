#!/usr/bin/env bash
echo "Starting Oracle Java JDK Installation..."
echo "Add repository"
/usr/bin/add-apt-repository ppa:webupd8team/java
echo "Add repository key"
/usr/bin/apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
echo "apt-update"
/usr/bin/apt-key update
/usr/bin/apt-get update
echo "accept license"
/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections;/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 seen true | sudo /usr/bin/debconf-set-selections;
echo "install jdk7"
/usr/bin/apt-get -y install oracle-java7-installer

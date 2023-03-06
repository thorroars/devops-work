



i



#! /bin/bash

   sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

   amazon-linux-extras install java-openjdk11-y 
  
  yum install jenkins -y  

   service jenkins start
   chkconfig jenkins on 




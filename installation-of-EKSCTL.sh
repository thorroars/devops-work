#! /bin/bash
##############################
#author: vinay
#date: 06-03-2023
#purpose: installation of eksctl 
###############################


  # AWS EKS Setup 
  
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin
kubectl version --short --client

# setup EKSCTL

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

# attach IAM role to ec2-instance 
#
# create cluster and nodes 

eksctl create cluster --name vinay-cluster \
   --region ap-south-1 \
--node-type t2.small \

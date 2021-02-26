## Setup Kubernities Cluster using KOPS on AWS Cloud
<br>
<br>

### Install AWS ClI

```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

```
  >If in your system unzip not installed then you can install by following command
  > sudo apt-get install unzip


<br>

### Install Kubelet in system

```
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

```

### Check AWS Configured or not by following command
```
aws ec2 describe-regions

```

### Install Kops 

```
wget https://github.com/kubernetes/kops/releases/download/v1.19.1/kops-linux-amd64

```

### Create Bucket where Cluster information will save

```
aws s3 mb s3://dev.k8s.nsdubey.in

```

### Export Kops Key following way
```
export KOPS_STATE_STORE=s3://dev.k8s.nsdubey.in
```

### RUN ssh key gen

```
ssh-keygen

```

### RUN ssh key gen

```
kops create cluster \
--name dev.k8s.nsdubey.in \
--dns-zone=nsdubey.in \
--dns private \
--cloud aws \
--master-size t2.micro \
--master-count 1 \
--master-zones us-east-1a \
--node-size t2.micro \
--node-count 5 \
--zones us-east-1a
```

### Delete the Cluster flowing way

```
kops delete cluster dev.k8s.nsdubey.in --yes --state s3://dev.k8s.nsdubey.in

```

### List all nodes in all namespace

```
Kubectl get nodes -o wide
```

### Create Deployment 
```
kubectl create deployment test-depl --image nginx --port 80
```

### Display the All Pods 
```
kubectl get pod
```

### Expose the deployment as nodeport By which can be access from the outside of cluster

```
kubectl expose deployment test-depl --type NodePort
```


then you've edit in s/g and add all trafic to serve web page from out side of cluster

Install Jenkins

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins



## Introduction
----


Kubernetes, also known as K8s, is an open source system for managing [containerized applications]
across multiple hosts. It provides basic mechanisms for deployment, maintenance,
and scaling of applications.

Kubernetes builds upon a decade and a half of experience at Google running
production workloads at scale using a system called [Borg],
combined with best-of-breed ideas and practices from the community.

Kubernetes is hosted by the Cloud Native Computing Foundation ([CNCF]).
If your company wants to help shape the evolution of
technologies that are container-packaged, dynamically scheduled,
and microservices-oriented, consider joining the CNCF.
For details about who's involved and how Kubernetes plays a role,
read the CNCF [announcement].
<br><br>


### Architecture
----
Deploying an application to Kubernetes means deploying an application to a Kubernetes cluster.

A typical Kubernetes cluster is a collection of physical or virtual machines called nodes that run containerized applications. A cluster is made up of one master node that manages the cluster, and many worker nodes that run the actual application instances inside Kubernetes objects called pods.

A pod is a basic building block in a Kubernetes cluster. It represents a single running process that encapsulates a container or in some scenarios many closely coupled containers. Pods can be replicated to scale applications and handle more traffic. From the perspective of a cluster, a set of replicated pods is still one application instance, although it might be made up of dozens of instances of itself. A single pod or a group of replicated pods are managed by Kubernetes objects called controllers. A controller handles replication, self-healing, rollout of updates, and general management of pods. One example of a controller that you will use in this guide is a deployment.

A pod or a group of replicated pods are abstracted through Kubernetes objects called services that define a set of rules by which the pods can be accessed. In a basic scenario, a Kubernetes service exposes a node port that can be used together with the cluster IP address to access the pods encapsulated by the service.

To learn about the various Kubernetes resources that you can configure, see the <a href="https://kubernetes.io/docs/concepts/" target="_blank"> official Kubernetes documentation.</a>

----


### Kubernities Components:

#### Api Server:-
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator<br><br>

#### Scheduler
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator<br>

#### Controller:- 
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator 
<br>
ECTD Database:- Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator <br>
####  Kube Proxy:- 
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator 
<br>

####  Kubelet:- 
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator
<br>

####  Container Docker:-
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator  
<br>

####   POD:-
Schdular basically are responsable to which node is perfect to deploy and run POD. Schedular will run when it's got the instruction from the api server given  by kubernities adminstator 
<br>

### Figure 
 <img src="../../img/components.jpg" width="100%" alt=""/>


### Cluster Steup
By using kubernities you can setup Cluster on the follwoing place
- On Primises
- Cloud- AWS/GCP/Azure
- VM
- Platform as Service
----

### You can create cluster following methods
- Using Kubeadm
- Using file methods
- Using Kubeadm
- Using Minikube (Only for learning purpose, its make single node cluster not recommended for production)
- Using Kops (Basically it's kubernities tools that is also supporterd by AWS, Google, Terraform, VMware)

### Cloud Services that support kubernities

- Google (GKE)
- Azure (AKS)
- AWS (EKS)
- Readhat (Open shift)




## References:








[Megalix Blog](https://www.magalix.com/blog/the-best-kubernetes-tutorials)

[IBM Devlopers](https://developer.ibm.com/series/kubernetes-learning-path/)

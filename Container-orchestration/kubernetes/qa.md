
### kubernetes Question Answer

<a name="kubernetes"></a>

<details>
<summary>What is Kubernetes? Why organizations are using it?</summary><br><b>

Kubernetes is an open-source system for automating deployment, scaling, and management of containerized applications.

To understand what Kubernetes is good for, let's look at some examples:

* You would like to run a certain application in a container on multiple different locations. Sure, if it's 2-3 servers/locations, you can do it by yourself but it can be challenging to scale it up to additional multiple location.<br>
* Performing updates and changes across hundreds of containers<br>
* Handle cases where the current load requires to scale up (or down)
</b></details>

<details>
<summary>What is a Kubernetes Cluster?</summary><br><b>

Red Hat Definition: "A Kubernetes cluster is a set of node machines for running containerized applications. If you’re running Kubernetes, you’re running a cluster.

At a minimum, a cluster contains a worker node and a master node."

Read more [here](https://www.redhat.com/en/topics/containers/what-is-a-kubernetes-cluster)
</b></details>

<details>
<summary>What is a Node?</summary><br><b>

A node is a virtual machine or a physical server that serves as a worker for running the applications.
It's recommended to have at least 3 nodes in Kubernetes production environment.
</b></details>

<details>
<summary>What the master node is responsible for?</summary><br><b>

The master coordinates all the workflows in the cluster:

* Scheduling applications
* Managing desired state
* Rolling out new updates
</b></details>

<details>
<summary>What do we need worker nodes for?</summary><br><b>

The workers are the nodes which run the applications and workloads.
</b></details>

<details>
<summary>True or False? Every cluster must have 0 or more master nodes and 1 or more workers</summary><br><b>

False. A Kubernetes cluster consists of at least 1 master and 0 or more workers.
</b></details>

<details>
<summary>Explain what is a pod</summary><br><b>
</b></details>

<details>
<summary>What are the components of the master node?</summary><br><b>

  * API Server - the Kubernetes API. All cluster components communicate through it
  * Scheduler - assigns an application with a worker node it can run on
  * Controller Manager - cluster maintenance (replications, node failures, etc.)
  * etcd - stores cluster configuration
</b></details>

<details>
<summary>True or False? The API server is the only component which communicates directly with etcd</summary><br><b>

True
</b></details>

<details>
<summary>What are the components of a worker node?</summary><br><b>

  * Kubelet - an agent responsible for node communication with the master.
  * Kube-proxy - load balancing traffic between app components
  * Container runtime - the engine runs the containers (Podman, Docker, ...)
</b></details>

<details>
<summary>What is kubectl?</summary><br><b>
</b></details>

<details>
<summary>What are namespaces? Why would someone use namespaces?</summary><br><b>
</b></details>

<details>
<summary>True or False? When a namespace is deleted all resources in that namespace are not deleted but moved to another default namespace</summary><br><b>

False. When a namespace is deleted, the resources in that namespace are deleted as well.
</b></details>

<details>
<summary>What special namespaces are there?</summary><br><b>

* default
* kube-system
* kube-public
</b></details>

<details>
<summary>What "Resources Quotas" are used for and how?</summary><br><b>
</b></details>

<details>
<summary>Explain ConfigMaps</summary><br><b>

Separate configuration from pods.
</b></details>

<details>
<summary>How to use ConfigMaps?</summary><br><b>

1. Create it (from key&value, a file or an env file)
2. Attach it. Mount a configmap as a volume
</b></details>

<details>
<summary>Explain "Horizontal Pod Autoscaler"</summary><br><b>

Scale the number of pods automatically on observed CPU utilization.
</b></details>

<details>
<summary>When you delete a pod, is it deleted instantly? (a moment after running the command)</summary><br><b>
</b></details>

<details>
<summary>How to delete a pod instantly?</summary><br><b>

Use "--grace-period=0 --force"
</b></details>

<details>
<summary>Explain the "Service" concept</summary><br><b>

"An abstract way to expose an application running on a set of Pods as a network service." - more [here](https://kubernetes.io/docs/concepts/services-networking/service)
</b></details>

<details>
<summary>What services types are there?</summary><br><b>

* ClusterIP
* NodePort
* LoadBalancer
* ExternalName

More on this topic [here](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)
</b></details>

<details>
<summary>What services types are there?</summary><br><b>
</b></details>

<details>
<summary>Explain Liveness probe</summary><br><b>
</b></details>

<details>
<summary>Explain Readiness probe</summary><br><b>
</b></details>

<details>
<summary>What does being cloud-native mean?</summary><br><b>
</b></details>

<details>
<summary>Explain the pet and cattle approach of infrastructure with respect to kubernetes</summary><br><b>
</b></details>

<details>
<summary>Describe how you one proceeds to run a containerised web app in K8s, which should be reachable from a public URL.</summary><br><b>
</b></details>

<details>
<summary>How would you troubleshoot your cluster if some applications are not reachable any more?</summary><br><b>
</b></details>

<details>
<summary>Describe what CustomResourceDefinitions there are in the Kubernetes world? What they can be used for?</summary><br><b>
</b></details>

<details>
<summary>What is RBAC?</summary><br><b>
</b></details>

#### Scheduling

<details>
<summary> How does scheduling work in kubernetes?</summary><br><b>

The control plane component kube-scheduler asks the following questions,
1. What to schedule? It tries to understand the pod-definition specifications
2. Which node to schedule? It tries to determine the best node with available resources to spin a pod
3. Binds the Pod to a given node

View more [here](https://www.youtube.com/watch?v=rDCWxkvPlAw)
</b></details>

<details>
<summary> How are labels and selectors used?</summary><br><b>
</b></details>

#### Kubernetes Commands

<details>
<summary>Which command you run to view your nodes?</code></summary><br><b>

`kubectl get nodes`
</b></details>

<details>
<summary>Which command you run to view all pods running on all namespaces?</code></summary><br><b>

`kubectl get pods --all-namespaces`
</b></details>

<details>
<summary>How to list all namespaces?</code></summary><br><b>

`kubectl get namespaces`
</b></details>

<details>
<summary>How to view the current namespace?</code></summary><br><b>

kubectl config view | grep namespace
</b></details>

<details>
<summary>How to switch to another namespace?</code></summary><br><b>

kubectl config set-context --current --namespace=some-namespace
</b></details>

<details>
<summary>How to create a resource quota?</code></summary><br><b>

kubectl create quota some-quota --hard-cpu=2,pods=2
</b></details>

<details>
<summary>How to create a deployment?</code></summary><br><b>

```
cat << EOF | kubectl create -f -
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx
EOF
```
</b></details>

<details>
<summary>How to print information on a specific pod?</code></summary><br><b>

`kubectl describe pod pod_name`
</b></details>

<details>
<summary>How to delete a pod?</code></summary><br><b>

`kubectl delete pod pod_name`
</b></details>

<details>
<summary>How to execute the command "ls" in an existing pod?</code></summary><br><b>

kubectl exec some-pod -it -- ls
</b></details>

<details>
<summary>How to create a service that exposes a deployment?</code></summary><br><b>

kubectl expose deploy some-deployment --port=80 --target-port=8080
</b></details>

<details>
<summary>How to create a pod and a service with one command?</code></summary><br><b>

kubectl run nginx --image=nginx --restart=Never --port 80 --expose
</b></details>

<details>
<summary>Describe in detail what the following command does <code>kubectl create deployment kubernetes-httpd --image=httpd</code></summary><br><b>
</b></details>

<details>
<summary>Why to create kind deployment, if pods can be launched with replicaset ? </summary><br><b>
</b></details>

<details>
<summary>How to scale a deployment to 8 replicas?</code></summary><br><b>

kubectl scale deploy some-deployment --replicas=8
</b></details>

<details>
<summary>How to get list of resources which are not in a namespace?</code></summary><br><b>

kubectl api-resources --namespaced=false
</b></details>

<details>
<summary>How to delete all pods whose status is not "Running"?</code></summary><br><b>

kubectl delete pods --field-selector=status.phase!='Running'
</b></details>

<details>
<summary>How to display the resources usages of pods?</summary><br><b>

kubectl top pod
</b></details>

<details>
<summary>What <code>kubectl get componentstatus</code> does?</summary><br><b>

Outputs the status of each of the control plane components.
</b></details>

<details>
<summary>What is Minikube?</summary><br><b>

Minikube is a lightweight Kubernetes implementation. It create a local virtual machine and deploys a simple (single node) cluster.
</b></details>

<details>
<summary>True or False? A pod can manage multiple containers</summary><br><b>
</b></details>

<details>
<summary>How do you monitor your Kubernetes?</summary><br><b>
</b></details>

<details>
<summary>You suspect one of the pods is having issues, what do you do?</summary><br><b>

Start by inspecting the pods status. we can use the command `kubectl get pods` (--all-namespaces for pods in system namespace)<br>

If we see "Error" status, we can keep debugging by running the command `kubectl describe pod [name]`. In case we still don't see anything useful we can try stern for log tailing.<br>

In case we find out there was a temporary issue with the pod or the system, we can try restarting the pod with the following `kubectl scale deployment [name] --replicas=0`<br>

Setting the replicas to 0 will shut down the process. Now start it with `kubectl scale deployment [name] --replicas=1`
</b></details>

<details>
<summary>What the Kubernetes Scheduler does?</summary><br><b>
</b></details>

<details>
<summary>What happens to running pods if if you stop Kubelet on the worker nodes?</summary><br><b>
</b></details>

<details>
<summary>What happens what pods are using too much memory? (more than its limit)</summary><br><b>

They become candidates to for termination.
</b></details>

<details>
<summary>Describe how roll-back works</summary><br><b>
</b></details>

<details>
<summary>True or False? Memory is a compressible resource, meaning that when a container reach the memory limit, it will keep running</summary><br><b>

False. CPU is a compressible resource while memory is a non compressible resource - once a container reached the memory limit, it will be terminated.
</b></details>

<details>
<summary>What is the control loop? How it works?</summary><br><b>

Explained [here](https://www.youtube.com/watch?v=i9V4oCa5f9I)
</b></details>

#### Kubernetes Operators

<details>
<summary>What is an Operator?</summary><br><b>

Explained [here](https://coreos.com/operators)

"An Operator is a method of packaging, deploying and managing a Kubernetes application"

There is also this [video tutorial](https://www.youtube.com/watch?v=KBTXBUVNF2I)
</b></details>

<details>
<summary>What components the Operator consists of?</summary><br><b>

1. CRD (custom resource definition)
2. Controller - Custom control loop which runs against the CRD
</b></details>

<details>
<summary>What is the Operator Framework?</summary><br><b>

open source toolkit used to manage k8s native applications, called operators, in an automated and efficient way.
</b></details>

<details>
<summary>What components the Operator Framework consists of??</summary><br><b>

1. Operator SDK - allows developers to build operators
2. Operator Lifecycle Manager - helps to install, update and generally manage the lifecycle of all operators
3. Operator Metering - Enables usage reporting for operators that provide specialized services
</b></details>

<details>
<summary>Describe in detail what is the Operator Lifecycle Manager</summary><br><b>

It's part of the Operator Framework, used for managing the lifecycle of operators. It basically extends Kubernetes so a user can use a declarative way to manage operators (installation, upgrade, ...).
</b></details>

<details>
<summary>What openshift-operator-lifecycle-manager namespace includes?</summary><br><b>

It includes:

  * catalog-operator - Resolving and installing ClusterServiceVersions the resource they specify.
  * olm-operator - Deploys applications defined by ClusterServiceVersion resource
</b></details>

<details>
<summary>What is kubconfig? What do you use it for?</summary><br><b>
</b></details>

#### Kubernetes Secrets

<details>
<summary>Explain Kubernetes Secrets</summary><br><b>

Secrets let you store and manage sensitive information (passwords, ssh keys, etc.)
</b></details>

<details>
<summary>How to create a secret from a key and value?</summary><br><b>

kubectl create secret generic some-secret --from-literal=password='donttellmypassword'
</b></details>

<details>
<summary>How to create a secret from a file?</summary><br><b>

kubectl create secret generic some-secret --from-file=/some/file.txt
</b></details>

#### Kubernetes Storage

<details>
<summary>Explain "Persistent Volumes". Why do we need it?</summary><br><b>
</b></details>

<details>
<summary>What types of persistent volumes are there?</summary><br><b>

* NFS
* iSCSI
* CephFS
* ...
</b></details>

<details>
<summary>What is PersistentVolumeClaim?</summary><br><b>
</b></details>

<details>
<summary>Explain Storage Classes</summary><br><b>
</b></details>

<details>
<summary>Explain "Dynamic Provisioning" and "Static Provisioning"</summary><br><b>
</b></details>

<details>
<summary>Explain Access Modes</summary><br><b>
</b></details>

<details>
<summary>What is Reclaim Policy?</summary><br><b>
</b></details>

<details>
<summary>What reclaim policies are there?</summary><br><b>

* Retain
* Recycle
* Delete
</b></details>

#### Kubernetes Misc

<details>
<summary>Explain what is CronJob and what is it used for</summary><br><b>
</b></details>

<details>
<summary>What QoS classes are there?</summary><br><b>

* Guaranteed
* Burstable
* BestEffort
</b></details>

<details>
<summary>Are there any Kuberenets tools you are using?</summary><br><b>

Kubectx, Kubens, ...
</b></details>

<details>
<summary>Explain Labels. What are they and why would one use them?</summary><br><b>
</b></details>

<details>
<summary>Explain Selectors</summary><br><b>
</b></details>

<details>
<summary>What is Kubeconfig?</summary><br><b>
</b></details>

#### Submariner

<details>
<summary>Explain what is Submariner and what is it used for</summary><br><b>

"Submariner enables direct networking between pods and services in different Kubernetes clusters, either on premise or in the cloud."

You can learn more [here](https://submariner-io.github.io)
</b></details>

<details>
<summary>What each of the following components does?:

  * Lighthouse
  * Broker
  * Gateway Engine
  * Route Agent</summary><br><b>
</b></details>


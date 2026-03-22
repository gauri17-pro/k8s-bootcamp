# k8s-bootcamp

## Install kubectl

``` 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

```
kubectl version
``` 

## Install minikube 

```
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
```

## Start Minikube 
```
minikube start
```

## Imperative command to create pods

```
kubectl run web-server --image=nginx
```

## Imperative command to create Deployment 

```
kubectl create deployment nginx-deploy --image=nginx --replicas=3
```

## How to get the FQDN of the service

- Exec inside the pod and execute the command 
```
kubectl exec -it nginx-deployment-5d6d68db49-4n5zl -- bash
apt-get update
apt-get install dnsutils
nslookup nginx-service
```

You will get the output as:
```
nslookup nginx-service
;; Got recursion not available from 10.96.0.10
Server:         10.96.0.10
Address:        10.96.0.10#53

Name:   nginx-service.default.svc.cluster.local
Address: 10.104.165.244
;; Got recursion not available from 10.96.0.10
```

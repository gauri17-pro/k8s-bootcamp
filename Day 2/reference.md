## Metrics server is a pre-requisite for the HPA i.e Horizontal Pod Autoscaler
```
minikube addons enable metrics-server
``` 

## Incase of minikube you need to patch --insecure-tls for the Metrics server addon
```
kubectl patch deployment metrics-server -n kube-system \
  --type='json' \
  -p='[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
```

## Command to create an HPA 
```
kubectl autoscale deployment <deployment-name> --min=2 --max=5 --cpu=60
```

## Command to increase the load using service of the deployment
```
kubectl run -it --rm load-generator-1 --image=busybox -- /bin/bash -c "while true; do wget -q -O- http://nginx-service; done"
```

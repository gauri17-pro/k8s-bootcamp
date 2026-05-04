curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm repo add kedacore https://kedacore.github.io/charts
helm repo update
helm install keda kedacore/keda --namespace keda --create-namespace
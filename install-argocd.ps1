helm install argocd  argo/argo-cd -n argocd --create-namespace
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | wsl base64 -d
argocd repo add https://github.com/southworks/rukbat --username $Env:SW_GITHUB_USER --password $Env:SW_GITHUB_TOKEN --port-forward
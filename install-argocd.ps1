helm install argocd  argo/argo-cd -n argocd --create-namespace
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | wsl base64 -d
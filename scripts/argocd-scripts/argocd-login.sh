#Switch to argocd context
#gw-icap-aks-delivery-argocd is default argocd context name, please change it accordingly
kubectl config use-context gw-icap-aks-delivery-argocd

#Change the argocd-server service type to LoadBalancer
kubectl patch svc argocd-server -p '{"spec": {"type": "LoadBalancer"}}'

#Login to argoCD 
   #Argo CD 1.8 and earlier
   #Get argocd IP
ARGOIP=$(kubectl get svc argocd-server -o jsonpath="{.status.loadBalancer.ingress[*].ip}")
   #Get argocd password
ARGOPASS=$(kubectl get pods -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2)

#Login to argocd 
argocd login $ARGOIP --name argocd-delivery-server --username admin --password $ARGOPASS --insecure

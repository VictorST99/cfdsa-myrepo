kubectl create namespace bggns
kubectl apply -f config.yaml -nbggns
kubectl apply -f bggdb.yaml -nbggns
kubectl apply -f bggapp.yaml -nbggns

kubectl port-forward po/bggapp-deploy-5b87d87cc-gzsg2 8080:3000 -nbggns



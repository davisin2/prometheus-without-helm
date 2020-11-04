kubectl create namespace monitoring
kubectl apply -f clusterRole.yaml
kubectl apply -f config-map.yaml
kubectl apply -f prometheus-deployment.yaml
kubectl apply -f prometheus-ingress.yaml
kubectl apply -f prometheus-service.yaml
kubectl apply -f node-exporter.yaml
echo "------------------------------------"
echo "Congratulations Prometheus with Node Exporter is installed..."
echo "------------------------------------"
kubectl get all -n monitoring

echo "------------------------------------"
echo "Please open http://localhost:30000"
echo "------------------------------------"
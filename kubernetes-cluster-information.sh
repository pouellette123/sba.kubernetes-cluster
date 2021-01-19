#!/bin/bash
# Script to output information on a kubernetes cluster to the file:
# ./kuberenetes-cluster-information-output
#
echo -n "Paul Ouellette SBA Kubernetes Cluster          " > ./kuberenetes-cluster-information-output
echo `date` >> ./kuberenetes-cluster-information-output
echo "" >> ./kuberenetes-cluster-information-output
echo "kubernetes-cluster-information.sh script output:" >> ./kuberenetes-cluster-information-output
echo "" >> ./kuberenetes-cluster-information-output

echo "This script will run commands to get information on the state " >> ./kuberenetes-cluster-information-output
echo "of the kubernetes cluster running for the sba-kubernetes-cluster." >> ./kuberenetes-cluster-information-output
echo "" >> ./kuberenetes-cluster-information-output

echo "The cluster information is provided by kubectl cluster-info." >> ./kuberenetes-cluster-information-output
kubectl cluster-info >> ./kuberenetes-cluster-information-output
echo "" >> ./kuberenetes-cluster-information-output

echo "The following minikube IP address is used in the browswer to bring up the app." >> ./kuberenetes-cluster-information-output
echo "It is the node's IP address, the entry point into the cluster." >> ./kuberenetes-cluster-information-output
echo -n "minikube IP address is: " >> ./kuberenetes-cluster-information-output
minikube ip >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The cluseter nodes information short form, retrieved by kubectl get nodes, is:" >> ./kuberenetes-cluster-information-output
kubectl get nodes >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The pyflaskapp-service Node PORT number, mapped 8080 internally to 32001 externally," >> ./kuberenetes-cluster-information-output
echo "is used after the IP address listed above in the browswer to bring up the app." >> ./kuberenetes-cluster-information-output
echo "The cluseter services information short form, retrieved by kubectl get services, is:" >> ./kuberenetes-cluster-information-output
kubectl get services >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The cluseter deployments information short form, retrieved by kubectl get deployments, is:" >> ./kuberenetes-cluster-information-output
kubectl get deployments >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The cluseter pods information short form, retrieved by kubectl get pods, is:" >> ./kuberenetes-cluster-information-output
kubectl get pods >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The cluseter nodes information long form, retrieved by kubectl describe nodes, is:" >> ./kuberenetes-cluster-information-output
kubectl describe nodes >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The pyflaskapp-service Node PORT number, mapped 8080 internally to 32001 externally," >> ./kuberenetes-cluster-information-output
echo "is used after the IP address listed above in the browswer to bring up the app." >> ./kuberenetes-cluster-information-output
echo "The cluseter services information long form, retrieved by kubectl describe services, is:" >> ./kuberenetes-cluster-information-output
kubectl describe services >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The cluseter deployments information long form, retrieved by kubectl describe deployments, is:" >> ./kuberenetes-cluster-information-output
kubectl describe deployments >> ./kuberenetes-cluster-information-output

echo "" >> ./kuberenetes-cluster-information-output
echo "The cluseter pods information long form, retrieved by kubectl dsescribe pods, is:" >> ./kuberenetes-cluster-information-output
kubectl describe pods >> ./kuberenetes-cluster-information-output


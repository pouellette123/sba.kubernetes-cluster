#!/bin/bash
# Script to output information on a kubernetes cluster to the file:
# ./kuberenetes-cluster-information-output
#
LOG_FILE="./kuberenetes-cluster-information-output"
echo -n "Paul Ouellette SBA Kubernetes Cluster          " > $LOG_FILE
echo `date` >> $LOG_FILE
echo "" >> $LOG_FILE
echo "kubernetes-cluster-information.sh script output:" >> $LOG_FILE
echo "" >> $LOG_FILE

echo "This script will run commands to get information on the state " >> $LOG_FILE
echo "of the kubernetes cluster running for the sba-kubernetes-cluster." >> $LOG_FILE
echo "" >> $LOG_FILE

echo "The cluster information is provided by kubectl cluster-info." >> $LOG_FILE
kubectl cluster-info >> $LOG_FILE
echo "" >> $LOG_FILE

echo "The following minikube IP address is used in the browswer to bring up the app." >> $LOG_FILE
echo "It is the node's IP address, the entry point into the cluster." >> $LOG_FILE
echo -n "minikube IP address is: " >> $LOG_FILE
minikube ip >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The cluster nodes information short form, retrieved by kubectl get nodes, is:" >> $LOG_FILE
kubectl get nodes >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The pyflaskapp-service Node PORT number, mapped 8080 internally to 32001 externally," >> $LOG_FILE
echo "is used after the IP address listed above in the browswer to bring up the app." >> $LOG_FILE
echo "The cluster services information short form, retrieved by kubectl get services, is:" >> $LOG_FILE
kubectl get services >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The cluster deployments information short form, retrieved by kubectl get deployments, is:" >> $LOG_FILE
kubectl get deployments >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The cluster pods information short form, retrieved by kubectl get pods, is:" >> $LOG_FILE
kubectl get pods >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The cluster nodes information long form, retrieved by kubectl describe nodes, is:" >> $LOG_FILE
kubectl describe nodes >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The pyflaskapp-service Node PORT number, mapped 8080 internally to 32001 externally," >> $LOG_FILE
echo "is used after the IP address listed above in the browswer to bring up the app." >> $LOG_FILE
echo "The cluster services information long form, retrieved by kubectl describe services, is:" >> $LOG_FILE
kubectl describe services >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The cluster deployments information long form, retrieved by kubectl describe deployments, is:" >> $LOG_FILE
kubectl describe deployments >> $LOG_FILE

echo "" >> $LOG_FILE
echo "The cluster pods information long form, retrieved by kubectl dsescribe pods, is:" >> $LOG_FILE
kubectl describe pods >> $LOG_FILE


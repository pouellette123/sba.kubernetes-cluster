#!/bin/bash
# script to retrieve logs from the pods and output to the log file:
# ./pods.log
#
# generate a header for the log file
#
PODS_LOG="./pods.log"
TMP_FILE="./tmpfile"
echo -n "Paul Ouellette SBA Kubernetes Cluster pods log for date: " > $PODS_LOG
echo `date` >> $PODS_LOG
echo "" >> $PODS_LOG

#
# kubectl get pods to list the pod names
#
echo "The cluster pods, retrieved by kubectl get pods, are:" >> $PODS_LOG
kubectl get pods > $TMP_FILE
cat $TMP_FILE >> $PODS_LOG 
echo "" >> $PODS_LOG

#
# Loop through the list of pod names and retrieve logs
#
INIT=0 # INIT used because 1st line of the pod info output is a header
while read line; do
   if [ $INIT != 0 ]; then
      POD_NAME=`echo $line | cut -f1 -d " "`
      echo -n "The pod logs for pod: " >> $PODS_LOG
      echo $POD_NAME are: >> $PODS_LOG
      echo "" >> $PODS_LOG
      kubectl logs $POD_NAME >> $PODS_LOG
      echo "" >> $PODS_LOG
      echo "" >> $PODS_LOG
   else
      INIT=1
   fi
done < $TMP_FILE

# remove temporary file
rm -rf $TMP_FILE

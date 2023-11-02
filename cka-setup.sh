#!/bin/bash 

set -ex

currentDir=`cd $(dirname $0); pwd -P`
baseDir=$(dirname "$currentDir")

echo $currentDir
echo $baseDir

# 01 done
echo "01 done..."
# 02
kubectl create deploy busybox --image=busybox:1.28 --replicas=3 -- /bin/sh -c "sleep 1d"
echo "02 done..."

# 03 done
echo "03 done..."

# 04 done
echo "04 done..."

# 05 done
echo "05 done..."

# 06
kubectl create deploy front-end --image=nginx:1.25 
echo "06 done..."

# 07
kubectl create ns ing-internal
kubectl run hi --image=registry.cn-zhangjiakou.aliyuncs.com/breezey/ping -n ing-internal
kubectl expose pod hi --port=5678 -n ing-internal
echo "07 done..."

# 08 done
kubectl create deploy presentation --image=busybox -- sleep 1d
echo "08 done..."

# 09 done
kubectl label node k8s-worker2 disk=spinning
echo "09 done..."

# 10 done
echo "10 done..."

# 11 done
echo "11 done..."

# 12
echo "12 done..."

# 13
echo "13 done..."

# 14
kubectl run bar --image=registry.cn-zhangjiakou.aliyuncs.com/breezey/bar
echo "14 done..."

# 15
kubectl run  big-corp-app --image=registry.cn-zhangjiakou.aliyuncs.com/breezey/bar
echo "15 done..."

# 16
kubectl apply -f ${currentDir}/cka16/cpu-loader.yaml
echo "16 done..."

# 17 done
echo "17 done..."


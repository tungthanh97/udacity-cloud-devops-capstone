#!/bin/bash

eksctl create cluster \
--name CapstoneEKS-0J5F5Y6TBD53 \
--version 1.25 \
--region us-east-1a \
--node-type t2.small \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--managed

eksctl get cluster --name=CapstoneEKS-0J5F5Y6TBD53

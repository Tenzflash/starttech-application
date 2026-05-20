#!/bin/bash
set -e
echo "Rolling update starting..."
ASG_NAME="${ASG_NAME:-prod-backend-asg}"
aws autoscaling update-auto-scaling-group --auto-scaling-group-name $ASG_NAME --desired-capacity 0
sleep 15
aws autoscaling update-auto-scaling-group --auto-scaling-group-name $ASG_NAME --desired-capacity 2
echo "Rolling update complete."

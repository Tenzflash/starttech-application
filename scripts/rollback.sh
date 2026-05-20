#!/bin/bash
echo "Rolling back to stable..."
aws autoscaling update-auto-scaling-group --auto-scaling-group-name prod-backend-asg --desired-capacity 0
sleep 10
aws autoscaling update-auto-scaling-group --auto-scaling-group-name prod-backend-asg --desired-capacity 2
echo "Rollback triggered."

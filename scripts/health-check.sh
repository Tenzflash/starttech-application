#!/bin/bash
ALB_URL="http://$ALB_DNS/health"
for i in {1..5}; do
  if curl -sf "$ALB_URL"; then echo "Health OK"; exit 0; fi
  echo "Waiting... ($i)"
  sleep 10
done
echo "Health check failed"
exit 1

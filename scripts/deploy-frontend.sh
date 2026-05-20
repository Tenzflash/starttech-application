#!/bin/bash
set -e
echo "Deploying Frontend..."
aws s3 sync frontend/build/ s3://$FRONTEND_S3_BUCKET --delete
aws cloudfront create-invalidation --distribution-id $CLOUDFRONT_DIST_ID --paths "/*"

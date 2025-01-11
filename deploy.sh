#!/bin/bash
./build.sh
aws s3 cp index.html s3://www.tavares.cloud --profile power
aws s3 cp styles.css s3://www.tavares.cloud --profile power
aws s3 cp profile.png s3://www.tavares.cloud --profile power
aws s3 cp light.jpg s3://www.tavares.cloud --profile power
aws s3 cp dark.jpg s3://www.tavares.cloud --profile power
aws cloudfront create-invalidation --distribution-id E3CNISU7P26T4T --paths '/*' --profile power

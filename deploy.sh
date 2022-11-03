#!/bin/bash
./build.sh
aws s3 cp index.html s3://www.tavares.cloud --profile gustavotavares
aws s3 cp styles.css s3://www.tavares.cloud --profile gustavotavares
aws cloudfront create-invalidation --distribution-id E3CNISU7P26T4T --paths '/*' --profile gustavotavares
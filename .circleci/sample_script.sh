#!/bin/bash
CIRCLE_URL="https://circleci.nike.com"
NT_ID="mreyn9"
PROJECT_NAME="gogogo"
CIRCLE_TOKEN=$(cat ~/.circle-token)
AWS_ACCESS_KEY=$(cat ~/.aws.access.key)
AWS_SECRET_KEY=$(cat ~/.aws.secret.key)
cat > tmp-body <<BODY
{"aws": {"keypair": {"access_key_id": "${AWS_ACCESS_KEY}","secret_access_key": "${AWS_SECRET_KEY}"}}}
BODY
# curl -X PUT -H 'content-type: application/json' -d tmp-body ${CIRCLE_URL}/api/v1.1/project/github/${NT_ID}/${PROJECT_NAME}/settings?circle-token=${CIRCLE_TOKEN}

curl -X PUT -H 'content-type: application/json' -d @tmp-body http://httpbin.org/put
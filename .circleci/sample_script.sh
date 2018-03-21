#!/bin/bash

curl -vvv -s -X PUT -d "`cat aglet_v.yaml`" -H "X-Aglet-Token: \"${AGLETPREPRODTOKEN}\"" -k "http://httpbin.org/put"
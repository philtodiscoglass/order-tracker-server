#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-in"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo

# phil@phil.com
# 123
# ID = "5f304db4e8e2c537cdbc85a9"
# Token = "1733db7b677459ad546d9aa31dfb5288"

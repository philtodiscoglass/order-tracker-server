#!/bin/bash

API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "example": {
      "title": "'"${TITLE}"'",
      "orderStatus": "'"${ORDERSTATUS}"'",
      "isPaid": "'"${ISPAID}"'",
      "product": "'"${STRING}"'",
      "price": "'"${PRICE}"'",
      "contact": "'"${CONTACT}"'",
      "shippingInfo": "'"${SHIPPING}"'",
      "refNum": "'"${REF}"'"
    }
  }'

echo

#!/bin/bash

#TEMPLATE_ID=1 TOKEN=BAhJIiU5MjYxNDZjYTYwNzI2OWFjZGEzOWYxNWRjZDY1YjEwNwY6BkVG--a4b650a179f244413822aca704bece136f542712 ID=3 sh scripts/template-items/get-one-template-item.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates/${TEMPLATE_ID}/template_items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

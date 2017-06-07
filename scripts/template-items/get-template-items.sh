#!/bin/bash
#ID=8 TEMPLATE_ID=1 TOKEN=BAhJIiU2YzJkNDViMWQzNjcyOTY0MjcxZDRiNmI4ZjA3OTNkYQY6BkVG--a8e3710a6ccfe34ac3fcaf83dc94a21a308faa82 sh scripts/template-items/get-template-items.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates/${TEMPLATE_ID}/template_items"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

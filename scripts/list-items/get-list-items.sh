#!/bin/bash
#ID=8 LIST_ID=10 TOKEN=BAhJIiU3ZjY2MzJmZDA5N2QxNWNmNGI1MjQxMTBiODUwNzFiYQY6BkVG--92008ab979ab58104ddea5c18592061374065139 sh scripts/list-items/get-list-items.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LIST_ID}/list_items"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

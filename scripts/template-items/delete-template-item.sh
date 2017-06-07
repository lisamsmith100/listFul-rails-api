#!/bin/bash
#TEMPLATE_ID=2 TOKEN=BAhJIiU5ZjVhMDAyOTNjMjBhZjA0YTU2ZjhhM2IxYjk2ZTY5OAY6BkVG--44fec36101676c8113fd068e85cecd072c554dfb ID=8 sh scripts/template-items/delete-template-item.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates/${TEMPLATE_ID}/template_items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

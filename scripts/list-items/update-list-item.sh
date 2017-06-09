#!/bin/bash
#LIST_ID=1 ID=25 TOKEN=BAhJIiU0NjlkOTNiMGNjZDc2MDQ0ZDkxNTQzYjRkYjczMDEyMAY6BkVG--28967b211bbd7ca9f3c75f573fffaa139893b0b6 LIST_ITEM_NAME="tttttttttttt" sh scripts/list-items/update-list-item.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LIST_ID}/list_items"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "list_item": {
      "list_item_name": "'"${LIST_ITEM_NAME}"'",
      "list_item_status": "'"${LIST_ITEM_STATUS}"'",
      "list_item_reminder": "'"${LIST_ITEM_REMINDER}"'",
      "list_item_reminder_date": "'"${LIST_ITEM_REMINDER_DATE}"'"
    }
  }'

  echo

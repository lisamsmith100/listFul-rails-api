#!/bin/bash
#LIST_ID=10 ID=17 TOKEN=BAhJIiUzYTIxZmI1ZTdkNzM5MDhhMTc3ZDlmZjg2Y2M5MDY5YQY6BkVG--dc9e27a51eeebe308808967ca2c4bcf133c1b3e1 LIST_ITEM_NAME="durian smells like dirty gross feet" sh scripts/list-items/update-list-item.sh

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

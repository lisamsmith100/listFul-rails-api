#!/bin/bash
#LIST_ID=9 TOKEN=BAhJIiU0OTczMzcyZjEwMGU4NTk4YWJkNTU0NDgxMGM1YTY0MQY6BkVG--cbb33662ce77525d0b4627048c4d80e64c971a48 ID=1 LIST_ITEM_NAME="updating" sh scripts/list-items/update-list-item.sh

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

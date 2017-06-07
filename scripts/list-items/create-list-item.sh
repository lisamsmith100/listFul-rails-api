#!/bin/bash
#LIST_ID=10 TOKEN=BAhJIiU3ZjY2MzJmZDA5N2QxNWNmNGI1MjQxMTBiODUwNzFiYQY6BkVG--92008ab979ab58104ddea5c18592061374065139 LIST_ITEM_NAME="durian" LIST_ITEM_STATUS=false LIST_ITEM_REMINDER=true LIST_ITEM_REMINDER_DATE="2017-06-09" sh scripts/list-items/create-list-item.sh

#sh scripts/list-items/create-list-item.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LIST_ID}/list_items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
# URL_PATH="/lists/id=$ID/list_items"
# # URL_PATH="/lists/:list_id/list_items"
# URL_PATH="/lists/{$ID}/list_items"


# curl --include --request POST http://localhost:4741/entries \
#   --header "Content-Type: application/json" \
#   --data '{
#     "entry": {
#       "title": "this is a new entry",
#       "backstory": "working on this project, I am trying to solve a problem",
#       "stopper": "thrashing, lack of knowledge, staring at screen too long?",
#       "status": "unsolved"
#     }
#   }'
#
# "list_id": "'"${LIST_ID}"'",


#TOKEN=BAhJIiU1MGQ3YjczZmJjNGMzNzA1YmRmMTgwZDk2NDk0NjI1NAY6BkVG--17a534caff923a08cf35d7c9158c2409f054ecbd TITLE="new curl request to verify" sh scripts/create-entry.sh

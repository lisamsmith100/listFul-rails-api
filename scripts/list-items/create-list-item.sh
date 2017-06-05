#!/bin/bash
#TOKEN=BAhJIiVjYzJmOWUwZDVlM2Y5NzI0MWI3NWNmYTk2NjBkMDI4YwY6BkVG--cb358f094a7674b629346e0bf31a34b598e18799 LIST_ITEM_NAME="first list item for first list for user lms" LIST_ITEM_STATUS=false LIST_ITEM_REMINDER=true LIST_ITEM_REMINDER_DATE="2017-06-09" LIST_ID=2 sh scripts/list-items/create-list-item.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/list_items"
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
      "list_item_reminder_date": "'"${LIST_ITEM_REMINDER_DATE}"'",
      "list_id": "'"${LIST_ID}"'"
    }
  }'

echo


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

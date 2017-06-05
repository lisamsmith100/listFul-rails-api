#!/bin/bash
#TOKEN=BAhJIiVjYmQxMDljMTcxZGM0NTNhMGNmNmZhM2E1OGZiMGRmMgY6BkVG--db9c97508cccc65ec1c4bac1c0c1cdbc1d1609a0 LIST_NAME="ninth list for user lms" LIST_CATEGORY="WDI" LIST_STATUS=false LIST_REMINDER=true LIST_REMINDER_DATE="2017-06-09" sh scripts/lists/create-list.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "list": {
      "list_name": "'"${LIST_NAME}"'",
      "list_category": "'"${LIST_CATEGORY}"'",
      "list_status": "'"${LIST_STATUS}"'",
      "list_reminder": "'"${LIST_REMINDER}"'",
      "list_reminder_date": "'"${LIST_REMINDER_DATE}"'"
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


#TOKEN=BAhJIiU1MGQ3YjczZmJjNGMzNzA1YmRmMTgwZDk2NDk0NjI1NAY6BkVG--17a534caff923a08cf35d7c9158c2409f054ecbd TITLE="new curl request to verify" sh scripts/create-entry.sh

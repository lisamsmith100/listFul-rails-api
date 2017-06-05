#!/bin/bash
#TOKEN=BAhJIiUzZDMxMzgyM2I1Mjk4MzE3NDM5OTA0YTJhODk0Y2QwMgY6BkVG--3a378c6c028678cc06027b781bcb735c4098a95c LIST_NAME="first list for user lms" LIST_CATEGORY="WDI" sh scripts/lists/create-list.sh

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

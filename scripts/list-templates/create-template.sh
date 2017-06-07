#!/bin/bash
#TOKEN=BAhJIiU5ZjVhMDAyOTNjMjBhZjA0YTU2ZjhhM2IxYjk2ZTY5OAY6BkVG--44fec36101676c8113fd068e85cecd072c554dfb TEMPLATE_NAME="ANOTHER list template for user lms" TEMPLATE_CATEGORY="WDI" TEMPLATE_STATUS=false TEMPLATE_REMINDER=true TEMPLATE_REMINDER_DATE="2017-06-09" sh scripts/list-templates/create-template.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "template": {
      "template_name": "'"${TEMPLATE_NAME}"'",
      "template_category": "'"${TEMPLATE_CATEGORY}"'",
      "template_status": "'"${TEMPLATE_STATUS}"'",
      "template_reminder": "'"${TEMPLATE_REMINDER}"'",
      "template_reminder_date": "'"${TEMPLATE_REMINDER_DATE}"'"
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

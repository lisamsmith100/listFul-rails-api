#!/bin/bash
#TEMPLATE_ID=2 TOKEN=BAhJIiU5ZjVhMDAyOTNjMjBhZjA0YTU2ZjhhM2IxYjk2ZTY5OAY6BkVG--44fec36101676c8113fd068e85cecd072c554dfb TEMPLATE_ITEM_NAME="first template item FOR ANOTHER TEMPLATE" TEMPLATE_ITEM_STATUS=false TEMPLATE_ITEM_REMINDER=true TEMPLATE_ITEM_REMINDER_DATE="2017-06-09" sh scripts/template-items/create-template-item.sh

#sh scripts/template-items/create-template-item.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates/${TEMPLATE_ID}/template_items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "template_item": {
      "template_item_name": "'"${TEMPLATE_ITEM_NAME}"'",
      "template_item_category": "'"${TEMPLATE_ITEM_CATEGORY}"'",
      "template_item_status": "'"${TEMPLATE_ITEM_STATUS}"'",
      "template_item_reminder": "'"${TEMPLATE_ITEM_REMINDER}"'",
      "template_item_reminder_date": "'"${TEMPLATE_ITEM_REMINDER_DATE}"'"
    }
  }'
#!/bin/bash
#TEMPLATE_ID=1 TOKEN=BAhJIiU5MjYxNDZjYTYwNzI2OWFjZGEzOWYxNWRjZDY1YjEwNwY6BkVG--a4b650a179f244413822aca704bece136f542712 TEMPLATE_ITEM_NAME="first template item" TEMPLATE_ITEM_STATUS=false TEMPLATE_ITEM_REMINDER=true TEMPLATE_ITEM_REMINDER_DATE="2017-06-09" sh scripts/template-items/create-template-item.sh

#sh scripts/template-items/create-template-item.sh

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/templates/${TEMPLATE_ID}/template_items"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN" \
#   --data '{
#     "template_item": {
#       "template_item_name": "'"${TEMPLATE_ITEM_NAME}"'",
#       "template_item_category": "'"${TEMPLATE_ITEM_CATEGORY}"'",
#       "template_item_status": "'"${TEMPLATE_ITEM_STATUS}"'",
#       "template_item_reminder": "'"${TEMPLATE_ITEM_REMINDER}"'",
#       "template_item_reminder_date": "'"${TEMPLATE_ITEM_REMINDER_DATE}"'"
#     }
#   }'

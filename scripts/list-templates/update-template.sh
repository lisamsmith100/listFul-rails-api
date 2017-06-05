#!/bin/bash
#TOKEN=BAhJIiU0OWQzOWY1ZGI5MTg4ZjU4ZTQxZWRjYjc1MTBkNWYyYQY6BkVG--2c391ac2b43dcb03690bd9507030854a25f82858 ID=3 TEMPLATE_NAME="update to third template for user lms" TEMPLATE_STATUS=false TEMPLATE_REMINDER=true TEMPLATE_REMINDER_DATE="2017-06-09" sh scripts/list-templates/update-template.sh

#TOKEN="BAhJIiU3NzgyY2YxZWI2YTZhZTdkMWJjMjE4YTVkNWYxNmE1OQY6BkVG--d8072a1c2927df57328557bc664f88ab6b9a2d30"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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

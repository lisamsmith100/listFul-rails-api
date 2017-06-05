#!/bin/bash
#TOKEN=BAhJIiVjYmQxMDljMTcxZGM0NTNhMGNmNmZhM2E1OGZiMGRmMgY6BkVG--db9c97508cccc65ec1c4bac1c0c1cdbc1d1609a0 ID=10 LIST_NAME="update to ninth-b/c-no-date listed for user lms" LIST_CATEGORY="WDI" LIST_STATUS=false LIST_REMINDER=true LIST_REMINDER_DATE="2017-06-09" sh scripts/lists/update-list.sh

#TOKEN="BAhJIiU3NzgyY2YxZWI2YTZhZTdkMWJjMjE4YTVkNWYxNmE1OQY6BkVG--d8072a1c2927df57328557bc664f88ab6b9a2d30"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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

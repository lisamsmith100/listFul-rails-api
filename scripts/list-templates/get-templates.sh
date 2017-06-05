#!/bin/bash
#TOKEN=BAhJIiU0OWQzOWY1ZGI5MTg4ZjU4ZTQxZWRjYjc1MTBkNWYyYQY6BkVG--2c391ac2b43dcb03690bd9507030854a25f82858 sh scripts/list-templates/get-templates.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

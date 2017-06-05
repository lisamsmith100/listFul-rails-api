#!/bin/bash
#TOKEN=BAhJIiU0OWQzOWY1ZGI5MTg4ZjU4ZTQxZWRjYjc1MTBkNWYyYQY6BkVG--2c391ac2b43dcb03690bd9507030854a25f82858 ID=2 sh scripts/list-templates/get-one-template.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates/{$ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/books/${ID}"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET # \
#   # --header "Authorization: Token token=$TOKEN"
#
# echo

#!/bin/bash
#TOKEN=BAhJIiVjYmQxMDljMTcxZGM0NTNhMGNmNmZhM2E1OGZiMGRmMgY6BkVG--db9c97508cccc65ec1c4bac1c0c1cdbc1d1609a0 ID=9 sh scripts/lists/get-one-list.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/{$ID}"
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

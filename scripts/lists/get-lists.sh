#!/bin/bash
#TOKEN=BAhJIiVjYmQxMDljMTcxZGM0NTNhMGNmNmZhM2E1OGZiMGRmMgY6BkVG--db9c97508cccc65ec1c4bac1c0c1cdbc1d1609a0 sh scripts/lists/get-lists.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

#!/bin/bash
#TOKEN=BAhJIiVjYmQxMDljMTcxZGM0NTNhMGNmNmZhM2E1OGZiMGRmMgY6BkVG--db9c97508cccc65ec1c4bac1c0c1cdbc1d1609a0 ID=13 sh scripts/lists/delete-list.sh

#!/bin/bash
#curl --include --request DELETE http://localhost:4741/entries/4
#ID=4 sh scripts/delete-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

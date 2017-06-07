#!/bin/bash
#LIST_ID=10 TOKEN=BAhJIiUyOGJmYTgwZmJkN2NiYWY2Zjg1NGM0MjIxMzQxODZjOQY6BkVG--72ae784ca37ab4f39ce73570307545b4b40dc2a4 ID=14 sh scripts/list-items/delete-list-item.sh
# LIST_ID=9
#!/bin/bash
#curl --include --request DELETE http://localhost:4741/entries/4
#ID=4 sh scripts/delete-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LIST_ID}/list_items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

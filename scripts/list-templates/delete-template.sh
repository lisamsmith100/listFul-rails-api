#!/bin/bash
#TOKEN=BAhJIiU0OWQzOWY1ZGI5MTg4ZjU4ZTQxZWRjYjc1MTBkNWYyYQY6BkVG--2c391ac2b43dcb03690bd9507030854a25f82858 ID=5 sh scripts/list-templates/delete-template.sh

#!/bin/bash
#curl --include --request DELETE http://localhost:4741/entries/4
#ID=4 sh scripts/delete-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/templates/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

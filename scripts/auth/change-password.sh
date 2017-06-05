#!/bin/bash

#ID=1 OLDPW=newnewpassy NEWPW=passy TOKEN=BAhJIiVkZTQwMzI3NGU0M2NlNWY3YmNiMTE5MWMwMDk2MDI4MgY6BkVG--293e9a6a226fe133a0103aa99680b810c7aebc54 sh scripts/auth/change-password.sh
#ID=8 OLDPW=l NEWPW=ll TOKEN=BAhJIiU0YTUyMjdjNTIyN2U1MGE2ZWY5YTE2MGI4MzQ5ODYzZgY6BkVG--d56d92a6d0f7b7070ffde60ceced85186be723dc sh scripts/auth/change-password.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo

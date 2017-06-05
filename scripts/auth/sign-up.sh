#!/bin/bash
#EMAIL=firstuser@example.email PASSWORD=passy PASSWORD_CONFIRMATION=passy sh scripts/auth/sign-up.sh
#EMAIL=seconduser@example.email PASSWORD=passy PASSWORD_CONFIRMATION=passy sh scripts/auth/sign-up.sh
#EMAIL=thirduser@example.email PASSWORD=passy PASSWORD_CONFIRMATION=passy sh scripts/auth/sign-up.sh
#EMAIL=fourthuser@example.email PASSWORD=passy PASSWORD_CONFIRMATION=passy sh scripts/auth/sign-up.sh
#EMAIL=lms PASSWORD=l PASSWORD_CONFIRMATION=l sh scripts/auth/sign-up.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo

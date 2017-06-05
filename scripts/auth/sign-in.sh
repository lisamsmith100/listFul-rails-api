#!/bin/bash

#EMAIL=firstuser@example.email PASSWORD=passy sh scripts/auth/sign-in.sh
#EMAIL=seconduser@example.email PASSWORD=passy sh scripts/auth/sign-in.sh
#EMAIL=thirduser@example.email PASSWORD=passy sh scripts/auth/sign-in.sh
#EMAIL=fourthuser@example.email PASSWORD=passy sh scripts/auth/sign-in.sh
#EMAIL=lms PASSWORD=ll sh scripts/auth/sign-in.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
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

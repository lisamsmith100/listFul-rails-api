#!/bin/bash

#ID=1 TOKEN=BAhJIiVkZTQwMzI3NGU0M2NlNWY3YmNiMTE5MWMwMDk2MDI4MgY6BkVG--293e9a6a226fe133a0103aa99680b810c7aebc54 sh scripts/auth/sign-out.sh
#ID=7 TOKEN=BAhJIiVhODIwZDRjMTI2NmZmODFhY2M0YjY0ZGM2OThjZmRiMQY6BkVG--e95ea2e9a6fe40e015072c0aca78f892de050eca sh scripts/auth/sign-out.sh
#ID=3 TOKEN=BAhJIiU3YjFiYTE0MThiM2ZkNzY5YWY5YTFmMjA3YWVkMTY1MAY6BkVG--a601907f63d708722f3ee7b0eef657c1e1355b09 sh scripts/auth/sign-out.sh
#ID=4 TOKEN=BAhJIiU4MzBhZGRhMjhkZmNiMjRkYzIxOWFkYmQxOTY0ZDA1NAY6BkVG--db15346abfd71350ee277404075ca879f515ae22 sh scripts/auth/sign-out.sh
#ID=8 TOKEN=BAhJIiU0YTUyMjdjNTIyN2U1MGE2ZWY5YTE2MGI4MzQ5ODYzZgY6BkVG--d56d92a6d0f7b7070ffde60ceced85186be723dc sh scripts/auth/sign-out.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

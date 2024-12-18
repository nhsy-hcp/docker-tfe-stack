#!/bin/bash

URL=https://localhost/admin/account/new?token=
TOKEN=$(docker compose exec tfe /usr/local/bin/tfectl admin token)
echo TOKEN: $TOKEN
open ${URL}${TOKEN}

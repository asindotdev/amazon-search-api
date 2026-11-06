#!/usr/bin/env bash
# Search Amazon – cURL example
# Usage: ASIN_API_KEY=your-key bash search.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://www.asin.dev/api/v1/search" \
  -H "Authorization: Bearer ${ASIN_API_KEY}" \
  --data-urlencode 'query=wireless earbuds' \
  --data-urlencode marketplace=com

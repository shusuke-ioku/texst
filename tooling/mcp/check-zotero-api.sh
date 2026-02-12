#!/usr/bin/env bash
set -euo pipefail

base="${1:-http://127.0.0.1:23119/api/users/0}"
url="${base%/}/items?format=json&limit=1"

echo "Checking Zotero local API: ${url}"
if curl -fsS "$url" >/dev/null; then
  echo "OK: Zotero local API is reachable."
else
  echo "ERROR: Cannot reach Zotero local API at ${base}" >&2
  echo "Make sure Zotero is running and local API access is enabled." >&2
  exit 1
fi

#!/usr/bin/env bash
set -euo pipefail

latest="${1:-}"
if [[ -z "$latest" ]]; then
  latest="$(git tag --list '0.*' --sort=-v:refname 2>/dev/null | head -n 1 || true)"
fi

if [[ -z "$latest" ]]; then
  echo "0.0.1"
  exit 0
fi

IFS=. read -r major minor patch <<< "$latest"

if [[ "$major" != "0" ]]; then
  echo "only 0.x versions are supported by this script" >&2
  exit 1
fi

if (( patch < 99 )); then
  patch=$((patch + 1))
else
  minor=$((minor + 1))
  patch=0
fi

echo "${major}.${minor}.${patch}"

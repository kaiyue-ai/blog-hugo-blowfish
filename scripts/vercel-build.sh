#!/usr/bin/env bash
set -euo pipefail

HUGO_VERSION="0.161.1"
HUGO_ARCHIVE="hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_ARCHIVE}"

curl -L "${HUGO_URL}" -o /tmp/hugo.tar.gz
tar -xzf /tmp/hugo.tar.gz -C /tmp

BASE_URL="${VERCEL_PROJECT_PRODUCTION_URL:-${VERCEL_URL:-blog-hugo-blowfish.vercel.app}}"
BASE_URL="${BASE_URL#https://}"
BASE_URL="${BASE_URL#http://}"

/tmp/hugo --gc --minify --baseURL "https://${BASE_URL}"

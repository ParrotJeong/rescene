#!/usr/bin/env bash
# src/pulse.html(아티팩트용 본문)를 감싸서 GitHub Pages 등에서 바로 열리는 index.html을 만듭니다.
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '%s' '<!doctype html><html lang="ko"><head><meta charset=utf8><meta name=viewport content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,-apple-system,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style></head><body>'
  cat src/pulse.html
  printf '%s\n' '</body></html>'
} > index.html
echo "index.html 생성 완료"

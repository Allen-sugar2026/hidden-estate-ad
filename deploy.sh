#!/usr/bin/env bash
# 隱密莊園廣告站 一鍵更新
#
# 正式站：https://dpcapp.club （LightNode VPS 38.60.212.87）
# 用法：ssh root@38.60.212.87 '/var/www/hidden-estate-ad/deploy.sh'
#
# 本站是純靜態 HTML，Nginx 直接從此目錄送檔（root /var/www/hidden-estate-ad），
# 不需 build、不需 PM2、也不需 reload Nginx —— git pull 完即刻生效。

set -euo pipefail

cd "$(dirname "$0")"

echo "→ 拉取最新版本…"
git pull

echo
echo "→ 目前版本："
git log --oneline -1

echo
echo "✓ 完成 https://dpcapp.club"

#!/usr/bin/env bash
# 매일 09:00 KST — AI News 자동 체크·업데이트 (Claude Code headless)
# crontab:  0 9 * * *  bash /ess/dlstibm/home/dragonb/dragonb6874.github.io/scripts/ai_news_daily.sh
set -u
export PATH="$HOME/.local/bin:$HOME/mambaforge/bin:$PATH"
export HOME="${HOME:-/ess/dlstibm/home/dragonb}"
REPO="$HOME/dragonb6874.github.io"
LOG="$REPO/_drafts/ai_news_cron.log"
mkdir -p "$REPO/_drafts"
cd "$REPO" || exit 1

echo "===== $(date '+%F %T %Z') run start =====" >> "$LOG"
claude -p "$(cat "$REPO/scripts/ai_news_prompt.txt")" \
  --dangerously-skip-permissions >> "$LOG" 2>&1
rc=$?
echo "===== $(date '+%F %T %Z') run end (rc=$rc) =====" >> "$LOG"

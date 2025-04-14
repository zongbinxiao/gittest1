#!/bin/bash

# 🧷 你要 clone 的 Git 倉庫網址
REPO_URL="git@github.com:swaglive/git-exercise.git"

# 📂 clone 到哪個資料夾
TARGET_DIR="git-exercise"

# 1️⃣ Clone 倉庫（包含所有分支記錄）
git clone "$REPO_URL" "$TARGET_DIR"

# 進入資料夾
cd "$TARGET_DIR" || exit

# 2️⃣ 顯示所有遠端分支
echo "📍 取得所有遠端分支列表..."
REMOTE_BRANCHES=$(git branch -r | grep -v '\->')

# 3️⃣ 為每個遠端分支建立本地追蹤分支
echo "🔁 建立本地分支中..."
for remote in $REMOTE_BRANCHES; do
    local_branch=${remote#origin/}
    if [[ "$local_branch" != "HEAD" ]]; then
        git checkout -b "$local_branch" "$remote" 2>/dev/null || echo "⚠️ 已存在本地分支 $local_branch，跳過。"
    fi
done

echo "✅ 所有遠端分支都已成功 clone 並建立對應本地分支！"

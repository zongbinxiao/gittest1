# 練習 1: 混亂分支結構整理

## 目標
整理當前的分支結構，解決所有懸而未決的問題，並確保所有重要的改動都被合併到適當的分支中。

## 當前分支結構
```
master
├── feature-A (已合併)
├── feature-B (已合併)
├── hotfix-1 (已合併)
├── feature-C (未合併，過時)
│   └── sub-feature-C1 (基於過時分支)
│       └── sub-feature-C2 (有重要改動)
├── develop (主要開發分支)
│   ├── feature-D (正在開發)
│   ├── feature-E (已放棄但未刪除)
│   └── feature-F (已完成但未合併)
│       └── sub-feature-F1 (有重要改動)
└── release-1.0 (過時發布分支)
    ├── hotfix-2 (已合併到release但未合併到master)
    └── hotfix-3 (未合併，包含重要修復)
```

## 要求
1. 確保 `master` 分支包含所有已完成的功能和修復。
2. 將 `sub-feature-C2` 中的重要改動合併到 `develop` 分支中。
3. 將已完成的 `feature-F` 合併到 `develop` 分支中。
4. 將 `hotfix-2` 和 `hotfix-3` 從 `release-1.0` 合併到 `master` 分支中。
5. 移除所有過時和已放棄的分支，保持倉庫整潔。
6. 確保最終的分支結構符合 Git Flow 工作流程。

## 提示
- 使用 `git log --graph --oneline --all` 查看完整的提交歷史和分支結構。
- 考慮使用 `cherry-pick` 來選擇性地合併特定的提交。
- 可能需要解決合併衝突。

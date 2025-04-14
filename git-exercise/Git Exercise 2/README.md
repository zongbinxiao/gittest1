# 練習 2: 混亂分支結構整理-超級複雜及困難版

## 目標
處理一個極度複雜的分支結構，解決所有衝突，並確保所有分支和發布按照正確的工作流程管理。

## 當前分支結構
```
master
├── develop (主要開發分支)
│   ├── feature-X (已合併但有衝突)
│   │   └── experimental-X1 (包含實驗性功能)
│   │       └── experimental-X2 (基於X1但互相衝突)
│   ├── feature-Y (半路放棄重新開發)
│   │   ├── feature-Y-v1 (已放棄)
│   │   └── feature-Y-v2 (正在開發中)
│   │       └── sub-feature-Y2 (基於v2開發的組件)
│   └── feature-Z (需要rebase到最新develop)
│       ├── sub-feature-Z1 (已完成)
│       └── sub-feature-Z2 (開發中，與Z1有依賴關係)
├── release-1.0 (已發布版本)
│   ├── hotfix-1.0.1 (已合併到release和master)
│   └── hotfix-1.0.2 (只合併到release)
├── release-2.0 (預備發布分支)
│   ├── feature-A (從develop挑選合併)
│   ├── feature-B (從develop挑選合併)
│   ├── hotfix-2.0.1 (提前修復的問題)
│   │   └── critical-fix (緊急修復，需合併回所有分支)
│   └── docs-update (文檔更新，需要單獨合併)
└── legacy-support (舊版本支持分支)
    ├── backport-fix-1 (從新版本向後移植的修復)
    ├── backport-fix-2 (從新版本向後移植的修復)
    └── customer-specific (特定客戶的定制修復)
        ├── client-A-fix (只適用於客戶A)
        └── client-B-fix (只適用於客戶B，與client-A-fix衝突)
```

## 要求
1. 解決 `feature-X` 和它的實驗分支中的所有衝突。
2. 從 `feature-Y-v1` 中提取有用的改動並合併到 `feature-Y-v2` 中。
3. 將 `feature-Z` 及其子功能重新基於最新的 `develop` 分支。
4. 將 `hotfix-1.0.2` 正確合併到 `master` 和其他需要的分支中。
5. 確保 `release-2.0` 包含所有必要的功能和修復。
6. 將 `critical-fix` 合併到所有相關分支中。
7. 解決 `client-A-fix` 和 `client-B-fix` 之間的衝突，並確保兩個客戶都能獲得所需的修復。
8. 整理最終的分支結構，確保它遵循 Git Flow 工作流程的最佳實踐。

## 提示
- 這是一個高級練習，需要深入理解 Git 的合併策略、rebase、cherry-pick 和衝突解決。
- 考慮使用交互式 rebase 來整理提交歷史。
- 使用 `git reflog` 可以在遇到問題時恢復到之前的狀態。
- 創建臨時分支來測試復雜的合併操作是一個好習慣。

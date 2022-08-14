#!/bin/sh

# --- Finder ---
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
killall Finder

# ネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# USBメモリに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# --- Security ---
# ファイアーウォールをオン
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# --- SystemUIServer関係 ---
# 時計で日付を表示（例：9月20日(木) 23:00）
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm:ss'
# バッテリーの割合（%）を表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# スクリーンショットのドロップシャドウを付けない
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer

# ---　TextEdit　---
# リッチテキストから標準テキストに変更
defaults write com.apple.TextEdit RichText -int 0

# ---  スクリーンショット  ---
# スクリーンショットの保存先をデスクトップから変更
mkdir ~/ScreenShot
defaults write com.apple.screencapture location ~/ScreenShot/
killall SystemUIServer

echo "👍 MacOS setting is done!"

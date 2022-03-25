#!/bin/bash

# === 設定 ===
# サーバ終了までの待ち時間
WAIT=60
# サーバ起動スクリプト
# (start.shの配置場所)
STARTSCRIPT=/var/sh/server.sh
# screenの名前
SCREEN_NAME='ikazuchi-server'
# バックアップ先のディレクトリ
BACKUP_DIR='/backup/mcserver'
# バックアップするディレクトリ(マイクラ鯖のディレクトリ)
BACKUP_MCSERVER='/var/mc-serve'
# ============

screen -p 0 -S ${SCREEN_NAME} -X eval 'stuff "say '${WAIT}'秒後にサーバーを再起動します\015"'
screen -p 0 -S ${SCREEN_NAME} -X eval 'stuff "say すぐに再接続可能になるので、しばらくお待ち下さい\015"'

sleep $WAIT
screen -p 0 -S ${SCREEN_NAME} -X eval 'stuff "stop\015"'
sleep 30
# バックアップ処理 ->

# TODO: バックアップ処理を書く


# <- ここまでバックアップ処理
# screen -listの結果から${SCREEN_NAME}が含まれるものを抽出し、空になるまでループ(結果、全て終了するまで待つ事になる)
while [ -n "$(screen -list | grep -o "${SCREEN_NAME}")" ]
do
  # 空回り防止
  sleep 1
done

sh $STARTSCRIPT
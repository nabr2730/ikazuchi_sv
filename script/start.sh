#!/bin/sh

# screenの名前です。何が動いてるか判別するのでわかりやすいものにしましょう
SCREEN_NAME='ikazuchi-server'
# 最大メモリ割り当て
XMX='6G'
# 最小メモリ割り当て
XMS='256M'
# 実行するディレクトリ
# /var/mc-server/ などjarファイルが見える場所を指定してください
DIR='/var/mc-server'
# jarファイルの名前(/var/mc-server/server.jar のようなフルパスでなくて大丈夫です)
JAR_NAME='server.jar'

# ===設定ここまで===

# dir移動
cd ${DIR}
# screenでマイクラ鯖を実行
screen -UAmdS ${SCREEN_NAME} java -Dfile.encoding=UTF-8 -Xms{$XMS} -Xmx${XMX} -jar ${JAR_NAME}



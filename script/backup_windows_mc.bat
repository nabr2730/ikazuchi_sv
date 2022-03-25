@echo off

SET /P ANSWER=" マインクラフトサーバーのバックアップを実行します。サーバーは停止していますか？バックアップ処理の続行はyキーです (Y/N)"

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)
echo 処理が中断されました...
pause

EXIT


:yes

echo 処理開始

REM (これはメモです) フォルダーのフルパスを指定してください
robocopy コピー元フォルダー コピー先フォルダー

pause

EXIT
・・・
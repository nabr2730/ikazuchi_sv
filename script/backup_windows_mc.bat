@echo off

SET /P ANSWER=" �}�C���N���t�g�T�[�o�[�̃o�b�N�A�b�v�����s���܂��B�T�[�o�[�͒�~���Ă��܂����H�o�b�N�A�b�v�����̑��s��y�L�[�ł� (Y/N)"

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)
echo ���������f����܂���...
pause

EXIT


:yes

echo �����J�n

REM (����̓����ł�) �t�H���_�[�̃t���p�X���w�肵�Ă�������
robocopy �R�s�[���t�H���_�[ �R�s�[��t�H���_�[

pause

EXIT
�E�E�E
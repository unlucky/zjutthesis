@echo off
title Monster XeLaTeX Template
:start
cls
echo ��ӭʹ���Ϲ� XeLaTeX ��ҵ���ģ�壬��ָʾ������Ҫ~
echo ----------------
echo 0. ���������ļ�
echo 1. �����������������ķ���
echo 2. ���ɿ��ⱨ��
echo 3. ���ɱ�ҵ����
echo 4. ����С����
echo 5. ȫ����������!
echo 6. �˳�
echo ----------------
set /p num="����������ѡ��: "
if "%num%"=="1" goto landt
if "%num%"=="2" goto proposal
if "%num%"=="3" goto thesis
if "%num%"=="4" goto paper
if "%num%"=="5" goto landt
if "%num%"=="6" goto exit
if "%num%"=="0" goto clean
echo �����ѡ��
pause
goto start

:landt
cls
call "clean.bat"
xelatex Literature_Translation
bibtex Literature_Translation
xelatex Literature_Translation
xelatex Literature_Translation
if "%num%"=="5" goto proposal
echo work down!
pause
goto start

:proposal
cls
call "clean.bat"
xelatex proposal
bibtex proposal
xelatex proposal
xelatex proposal
if "%num%"=="5" goto thesis
echo work down!
pause
goto start

:thesis
call "clean.bat"
xelatex thesis
bibtex thesis
xelatex thesis
xelatex thesis
if "%num%"=="5" goto paper
echo work down!
pause
goto start

:clean
call "clean.bat"
echo work down!
pause
goto start

:paper
call "clean.bat"
xelatex paper
bibtex paper
xelatex paper
xelatex paper
echo work down!
pause
goto start

:exit
exit
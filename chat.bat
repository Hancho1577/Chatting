@echo off
title ��ġ���� ä��1.1V
color F
:main
if not exist C:\hanchochat goto make
goto main2

:make
cd/
md C:\hanchochat

goto main
:main2
cd/
cd C:\hanchochat
cls
echo -----------------
echo 1.�α����ϱ�
echo 2.�����ϱ�
echo -----------------
echo.
set /p type=��ȣ:
if %type%==1 goto login
if %type%==2 goto register

:register
cls
echo �ڷΰ���:1
echo ---------------
echo �����ϱ�
echo ---------------
echo �̸��� �Է��� �ּ���.
echo ��� �Է��� �ּ���.
echo �ѱ���,����,Ư�������ϰ�� ä�� �Ұ���
echo.
set /p rname=�̸�:
if %rname%==1 goto main2
md %rname%
cls
echo �ڷΰ���:1
echo ---------------
echo �����ϱ�
echo ---------------
echo ��й�ȣ�� �Է��Ͽ� �ּ���.
echo.
set /p rpassword=PW:
if %rpassword%==1 goto main2
cd %rname%
md %rpassword%
echo .>>list.txt
cls
echo ���� ����
timeout /t 3
goto main2

:login
cls
echo �ڷΰ���:1
echo -------------
echo �α���
echo -------------
set /p name=�̸�:
if %name%==1 goto main2
if not exist %name% goto erro
cd %name%
cls
echo �ڷΰ���:1
echo -------------
echo �α���
echo -------------
set /p password=��й�ȣ:
if %password%==1 goto main2
if not exist %password% goto erro
cd %password%
goto hello
:erro
echo �н����� �Ǵ� �̸���
echo ��ġ���� �ʽ��ϴ�.
timeout /t 5
goto main2


:hello
cls
echo ȯ���մϴ�%name%��
echo -------------
echo ä���ϱ�:1
echo ä�� ��û:2
echo �α׾ƿ�:3
echo -------------
set /p num=��ȣ:
if %num%==1 goto chatlist
if %num%==2 goto chatc
if %num%==3 goto logout


:logout
cls
echo �α׾ƿ���
set name=0
set password=0
goto main2

:chatc
cls
echo ��û�Һ��� �̸��� �Է����ּ���.
echo �ڷΰ���:/q
set /p ccname=�̸�:
if %ccname%==/q goto hello
if not exist C:\hanchochat\%ccname% goto errro
echo %ccname%>>C:\hanchochat\%name%\list.txt
echo %name%>>C:\hanchochat\%ccname%\list.txt
echo �Ϸ�
timeout /5 3
goto hello
:errro
echo �������� �ʴ� �����Դϴ�. �̸��� �ǹٸ��� �Է��ߴ��� Ȯ���ϼ���.
timeout /t 5
goto chatc

:chatlist
findstr /b q C:\hanchochat\%name%\list.txt
findstr /b w C:\hanchochat\%name%\list.txt
findstr /b e C:\hanchochat\%name%\list.txt
findstr /b r C:\hanchochat\%name%\list.txt
findstr /b t C:\hanchochat\%name%\list.txt
findstr /b y C:\hanchochat\%name%\list.txt
findstr /b u C:\hanchochat\%name%\list.txt
findstr /b i C:\hanchochat\%name%\list.txt
findstr /b o C:\hanchochat\%name%\list.txt
findstr /b p C:\hanchochat\%name%\list.txt
findstr /b a C:\hanchochat\%name%\list.txt
findstr /b s C:\hanchochat\%name%\list.txt
findstr /b d C:\hanchochat\%name%\list.txt
findstr /b f C:\hanchochat\%name%\list.txt
findstr /b g C:\hanchochat\%name%\list.txt
findstr /b h C:\hanchochat\%name%\list.txt
findstr /b j C:\hanchochat\%name%\list.txt
findstr /b k C:\hanchochat\%name%\list.txt
findstr /b l C:\hanchochat\%name%\list.txt
findstr /b z C:\hanchochat\%name%\list.txt
findstr /b x C:\hanchochat\%name%\list.txt
findstr /b c C:\hanchochat\%name%\list.txt
findstr /b v C:\hanchochat\%name%\list.txt
findstr /b b C:\hanchochat\%name%\list.txt
findstr /b n C:\hanchochat\%name%\list.txt
findstr /b m C:\hanchochat\%name%\list.txt
echo.
echo �ڷΰ���:/q
echo ä���ϰ� �������� �̸��� �Է��Ͽ��ּ���.
echo.
set /p choice=�̸�:
if %choice%==/q goto hello
goto chatgo

:chatgo
cls
if not exist C:\hanchochat\%name%\%choice%.txt goto chatgo2
findstr /b [ C:\hanchochat\%name%\%choice%.txt
echo.
echo.
echo �ڷΰ���:/q ä��Ŭ����:/clear
set /p abou=����:
if "%abou%"=="/q" goto chatlist
if "%abou%"=="/clear" echo .>C:\hanchochat\%name%\%choice%.txt
set abou = %abou: ��=%
echo [��]-%abou%>>C:\hanchochat\%name%\%choice%.txt
echo [%name%]-%abou%>>C:\hanchochat\%choice%\%name%.txt
goto chatgo

:chatgo2
echo .>>C:\hanchochat\%name%\%choice%.txt
echo .>>C:\hanchochat\%choice%\%name%.txt
goto chatgo
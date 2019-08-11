@echo off
title 배치파일 채팅1.1V
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
echo 1.로그인하기
echo 2.가입하기
echo -----------------
echo.
set /p type=번호:
if %type%==1 goto login
if %type%==2 goto register

:register
cls
echo 뒤로가기:1
echo ---------------
echo 가입하기
echo ---------------
echo 이름을 입력해 주세요.
echo 영어만 입력해 주세요.
echo 한국어,숫자,특수문자일경우 채팅 불가능
echo.
set /p rname=이름:
if %rname%==1 goto main2
md %rname%
cls
echo 뒤로가기:1
echo ---------------
echo 가입하기
echo ---------------
echo 비밀번호를 입력하여 주세요.
echo.
set /p rpassword=PW:
if %rpassword%==1 goto main2
cd %rname%
md %rpassword%
echo .>>list.txt
cls
echo 가입 성공
timeout /t 3
goto main2

:login
cls
echo 뒤로가기:1
echo -------------
echo 로그인
echo -------------
set /p name=이름:
if %name%==1 goto main2
if not exist %name% goto erro
cd %name%
cls
echo 뒤로가기:1
echo -------------
echo 로그인
echo -------------
set /p password=비밀번호:
if %password%==1 goto main2
if not exist %password% goto erro
cd %password%
goto hello
:erro
echo 패스워드 또는 이름이
echo 일치하지 않습니다.
timeout /t 5
goto main2


:hello
cls
echo 환영합니다%name%님
echo -------------
echo 채팅하기:1
echo 채팅 신청:2
echo 로그아웃:3
echo -------------
set /p num=번호:
if %num%==1 goto chatlist
if %num%==2 goto chatc
if %num%==3 goto logout


:logout
cls
echo 로그아웃중
set name=0
set password=0
goto main2

:chatc
cls
echo 신청할분의 이름을 입력해주세요.
echo 뒤로가기:/q
set /p ccname=이름:
if %ccname%==/q goto hello
if not exist C:\hanchochat\%ccname% goto errro
echo %ccname%>>C:\hanchochat\%name%\list.txt
echo %name%>>C:\hanchochat\%ccname%\list.txt
echo 완료
timeout /5 3
goto hello
:errro
echo 존재하지 않는 유저입니다. 이름을 옳바르게 입력했는지 확인하세요.
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
echo 뒤로가기:/q
echo 채팅하고 싶은분의 이름을 입력하여주세요.
echo.
set /p choice=이름:
if %choice%==/q goto hello
goto chatgo

:chatgo
cls
if not exist C:\hanchochat\%name%\%choice%.txt goto chatgo2
findstr /b [ C:\hanchochat\%name%\%choice%.txt
echo.
echo.
echo 뒤로가기:/q 채팅클리어:/clear
set /p abou=답장:
if "%abou%"=="/q" goto chatlist
if "%abou%"=="/clear" echo .>C:\hanchochat\%name%\%choice%.txt
set abou = %abou: 씨=%
echo [나]-%abou%>>C:\hanchochat\%name%\%choice%.txt
echo [%name%]-%abou%>>C:\hanchochat\%choice%\%name%.txt
goto chatgo

:chatgo2
echo .>>C:\hanchochat\%name%\%choice%.txt
echo .>>C:\hanchochat\%choice%\%name%.txt
goto chatgo
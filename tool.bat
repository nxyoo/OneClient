@echo off
set ver=16.15.1
set arch=64
set appdata=%CD%\AppData

if not exist "%CD%\node-v%ver%-win-x%arch%" mkdir "%CD%\node-v%ver%-win-x%arch%"
PATH=%PATH%;"%CD%\node-v%ver%-win-x%arch%"
title node-js portable version %ver% LTS

cls
:launch
echo node:   start nodejs
echo start:  start launcher
set /P c=enter your choice: 
if /I "%c%" EQU "node"  cls && cmd
if /I "%c%" EQU "start" cls && npm install && npm start
if /I "%c%" EQU "win"   cls && npm install && npm run build:win
if /I "%c%" EQU "mac"   cls && npm install && npm run build:mac
if /I "%c%" EQU "linux" cls && npm install && npm run build:linux
if /I "%c%" EQU "all"   cls && npm install && npm run build:all
cls
echo une erreur est survenue
goto :launch


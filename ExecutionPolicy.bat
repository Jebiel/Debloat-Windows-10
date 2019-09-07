@echo off
pushd "%CD%"
CD /D "%~dp0
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)	

powershell -Command "& {Set-ExecutionPolicy Unrestricted -Force}"
powershell -Command "& {cd %CD%;ls -Recurse *.ps1 | Unblock-File}"
powershell -Command "& {cd %CD%;ls -Recurse *.psm1 | Unblock-File}"

exit
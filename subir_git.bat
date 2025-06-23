@echo off
cd /d "%~dp0"
git add .
git commit -m "Actualización automática del informe"
git push
pause

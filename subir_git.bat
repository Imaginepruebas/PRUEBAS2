@echo off
cd /d "%~dp0"
echo Ejecutando git add...
git add .

echo Ejecutando git commit...
git commit -m "Actualización automática del informe"

echo Subiendo a GitHub...
git push

echo ----------------------
echo Proceso terminado. Presiona una tecla para cerrar.
pause

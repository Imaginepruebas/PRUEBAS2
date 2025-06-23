@echo off
setlocal

:: Obtener fecha actual en formato YYYY-MM-DD
for /f %%A in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set fecha=%%A

:: Definir carpetas
set carpeta_origen=datos
set carpeta_destino=respaldo\%fecha%

:: Crear carpeta de respaldo si no existe
if not exist "%carpeta_destino%" (
    mkdir "%carpeta_destino%"
)

:: Archivos a respaldar
set archivos=bolivar proteccion alfa

echo Respaldando archivos JSON en la carpeta: %carpeta_destino%

for %%N in (%archivos%) do (
    copy "%carpeta_origen%\%%N.json" "%carpeta_destino%\%%N.json"
)

echo Backup completado exitosamente.
pause

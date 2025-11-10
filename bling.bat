@echo off
chcp 65001 >nul

REM Verifica Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERRO: Python não encontrado!
    pause
    exit /b 1
)

REM Instala dependências
echo Instalando dependências...
pip install -q pandas openpyxl requests flask python-dotenv colorama

REM Inicia servidor
echo.
echo Iniciando servidor Bling...
echo Abra: http://localhost:8000
echo.

start "" "http://localhost:8000"
python bling.py --serve

echo.
echo Servidor encerrado.
pause
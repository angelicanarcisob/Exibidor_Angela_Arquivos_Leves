@echo off
title Exibidor Interativo - Angela XV Anos
cd /d "%~dp0"

echo Iniciando o servidor local do convite...
where py >nul 2>nul
if %errorlevel%==0 (
    start "Servidor do Convite" cmd /k "cd /d ""%~dp0"" && py -3.13 -m http.server 8000"
) else (
    where python >nul 2>nul
    if %errorlevel%==0 (
        start "Servidor do Convite" cmd /k "cd /d ""%~dp0"" && python -m http.server 8000"
    ) else (
        echo Python nao foi encontrado. Abra o arquivo index.html diretamente no navegador.
        pause
        exit /b
    )
)

timeout /t 3 /nobreak >nul
start "" "https://angelicanarcisob.github.io/Exibidor_Angela_Arquivos_Leves/"
echo.
echo O convite esta aberto no navegador.
echo Para encerrar, feche a janela "Servidor do Convite".
pause

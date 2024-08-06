@echo off

REM Navega para a pasta Temp do Windows
cd /d C:\Windows\Temp
if %errorlevel% neq 0 (
    echo Erro ao navegar para C:\Windows\Temp
) else (
    del /F /Q *.* > nul 2>&1
    for /D %%d in (*) do rd /S /Q "%%d"
    echo Arquivos temporários da pasta Temp do Windows removidos.
)

REM Navega para a pasta %TEMP% do Windows
cd /d %TEMP%
if %errorlevel% neq 0 (
    echo Erro ao navegar para %TEMP%
) else (
    del /F /Q *.* > nul 2>&1
    for /D %%d in (*) do rd /S /Q "%%d"
    echo Arquivos temporários da pasta %TEMP% do Windows removidos.
)

REM Navega para a pasta PREFETCH do Windows
cd /d C:\Windows\Prefetch
if %errorlevel% neq 0 (
    echo Erro ao navegar para C:\Windows\Prefetch
) else (
    del /F /Q *.* > nul 2>&1
    for /D %%d in (*) do rd /S /Q "%%d"
    echo Arquivos temporários da pasta PREFETCH do Windows removidos.
)



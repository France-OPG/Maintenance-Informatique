@echo off
:: Vérifie si le script est lancé en mode administrateur
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Ce script doit etre execute en tant qu administrateur.
    echo Faites un clic droit sur ce fichier et selectionnez "Executer en tant qu administrateur".
    pause
    exit /b
)

:: Si le script est exécuté en tant qu'administrateur, continue...
echo Script lance avec les droits administrateur.

set SourcePath=%~dp0CleanRac
set DestinationPath=C:\Windows

if exist "%SourcePath%" (
    xcopy "%SourcePath%" "%DestinationPath%\CleanRac" /E /I /Y
    echo Le dossier "CleanRac" a ete copie avec succes dans %DestinationPath%.
) else (
    echo Le dossier "CleanRac" n existe pas a l emplacement : %~dp0
)
pause
notepad "%~dp0readme.txt"

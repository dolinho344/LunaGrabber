@echo off
color C
cls

echo Iniciando a limpeza completa dos rastros do Valorant e Riot Vanguard...
echo.

:: Fechar todos os processos relacionados ao Valorant e Riot Vanguard
echo Tentando fechar todos os processos relacionados ao Valorant...
taskkill /F /IM "VALORANT.exe" > nul 2>&1
taskkill /F /IM "RiotClientServices.exe" > nul 2>&1
taskkill /F /IM "Riot Vanguard.exe" > nul 2>&1
taskkill /F /IM "RiotClient64.exe" > nul 2>&1
taskkill /F /IM "RiotBrowser.exe" > nul 2>&1
taskkill /F /IM "RiotSystemLauncher.exe" > nul 2>&1
taskkill /F /IM "RiotClientAuth.exe" > nul 2>&1
taskkill /F /IM "RiotClientCrashHandler.exe" > nul 2>&1
echo Processos encerrados.

:: Apagar arquivos de log, cache e dados temporários
echo Apagando logs, cache e arquivos temporários...
del /F /Q "%LocalAppData%\Riot Games\Valorant\Saved\Logs\*" > nul 2>&1
del /F /Q "%LocalAppData%\Riot Games\Valorant\live\*.pak" > nul 2>&1
del /F /Q "%AppData%\Riot Games\Riot Client\Logs\*" > nul 2>&1
del /F /Q "%LocalAppData%\RiotClient\Logs\*" > nul 2>&1
del /F /Q "%Temp%\*" > nul 2>&1
echo Logs e arquivos temporários apagados.

:: Remover pastas relacionadas ao Riot Vanguard e Valorant
echo Removendo pastas relacionadas ao Valorant e Riot Vanguard...
rd /S /Q "%LocalAppData%\Riot Games\Valorant\live" > nul 2>&1
rd /S /Q "%LocalAppData%\Riot Games\Valorant\Saved\Temp" > nul 2>&1
rd /S /Q "%AppData%\Riot Games\Riot Client" > nul 2>&1
rd /S /Q "%ProgramData%\Riot Games" > nul 2>&1
rd /S /Q "%LocalAppData%\Riot Vanguard" > nul 2>&1
rd /S /Q "%LocalAppData%\Riot Games\Riot Client" > nul 2>&1
echo Pastas removidas.

:: Apagar drivers do Riot Vanguard
echo Removendo drivers do Riot Vanguard...
del /F /Q "%SystemRoot%\System32\drivers\vgk.sys" > nul 2>&1
del /F /Q "%SystemRoot%\System32\drivers\aaupd.sys" > nul 2>&1
del /F /Q "%SystemRoot%\System32\drivers\ban\*" > nul 2>&1
echo Drivers removidos.

:: Remover entradas de inicialização e registros relacionados
echo Removendo entradas de inicialização e registros...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /F /V "RiotClient" > nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /F /V "Riot Vanguard" > nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /F /V "RiotClient" > nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /F /V "Riot Vanguard" > nul 2>&1

:: Remover entradas do Registro para Riot Vanguard
echo Removendo entradas de registro para Riot Vanguard...
reg delete "HKCU\Software\Riot Games" /F > nul 2>&1
reg delete "HKLM\Software\Riot Games" /F > nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Riot Vanguard" /F > nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Riot Vanguard" /F > nul 2>&1

:: Remover entradas de drivers no registro
echo Removendo entradas de drivers no Registro...
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\vgk" /F > nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\aaupd" /F > nul 2>&1

:: Limpar cache do Windows Store
echo Limpeza do cache do Windows Store...
rd /S /Q "%LOCALAPPDATA%\Packages\Microsoft.WindowsStore_8wekyb3d8bbwe\LocalState" > nul 2>&1

:: Limpar logs de eventos do Windows
echo Limpando logs de eventos do Windows...
wevtutil cl Application > nul 2>&1
wevtutil cl System > nul 2>&1
wevtutil cl Security > nul 2>&1

:: Apagar arquivos temporários do sistema
echo Apagando arquivos temporários do sistema...
del /F /Q "%SystemRoot%\Temp\*" > nul 2>&1
del /F /Q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Riot Games\*" > nul 2>&1
del /F /Q "%UserProfile%\AppData\Local\Temp\*" > nul 2>&1
del /F /Q "%AppData%\Local\Microsoft\Windows\INetCache\*" > nul 2>&1

:: Limpar cache dos navegadores
echo Limpeza do cache dos navegadores...
del /F /Q "%UserProfile%\AppData\Local\Google\Chrome\User Data\Default\Cache\*" > nul 2>&1
del /F /Q "%UserProfile%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\*" > nul 2>&1

:: Remover arquivos de perfil de usuário
echo Removendo arquivos de perfil de usuários do Windows...
rd /S /Q "%UserProfile%\AppData\Roaming\Riot Games" > nul 2>&1
rd /S /Q "%UserProfile%\AppData\Local\Riot Games" > nul 2>&1
rd /S /Q "%UserProfile%\AppData\Roaming\Riot Vanguard" > nul 2>&1
rd /S /Q "%UserProfile%\AppData\Local\Riot Vanguard" > nul 2>&1

:: Remover logs de banimento VAL 152
echo Removendo logs específicos de banimento VAL 152...
del /F /Q "%LocalAppData%\Riot Games\Valorant\Saved\BanLogs\*" > nul 2>&1
del /F /Q "%AppData%\Riot Games\Valorant\Logs\BanLogs\*" > nul 2>&1

:: Exibir mensagem final
echo Limpeza completa! Todos os rastros do Valorant, Riot Vanguard e banimento VAL 152 foram removidos com sucesso.
pause

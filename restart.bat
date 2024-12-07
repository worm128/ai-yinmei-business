@echo off
REM wmic process where "CommandLine like '%%python%% %%yinmei-core-api.pyc%%'" get ProcessID
for /f "skip=1 tokens=1" %%P in ('wmic process where "CommandLine like '%%python%% %%yinmei-core-api.pyc%%'" get ProcessID') do (
    if not "%%P"=="" (
        echo %%P
        wmic process where "ProcessID=%%P" delete
    )
)
timeout /t 1 /nobreak >nul
start cmd /k  .\runtime\python.exe yinmei-core-api.pyc
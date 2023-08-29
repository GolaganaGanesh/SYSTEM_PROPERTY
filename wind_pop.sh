@echo off

for /f "delims=" %%a in ('hostname') do set "hostname=%%a"
set "memory_information="
for /f "skip=1 tokens=2,6" %%a in ('systeminfo ^| find "Available Physical Memory"') do (
    set "total_memory=%%a"
    set "free_memory=%%b"
    set "memory_information=Total Memory: !total_memory! Free Memory: !free_memory!"
)
set "cpu_information="
for /f "tokens=*" %%a in ('systeminfo') do (
    set "cpu_information=!cpu_information!%%a"
)
set "os_information="
for /f "usebackq tokens=*" %%a in (`type "C:\Windows\System32\drivers\etc\os-release" 2^>nul`) do (
    set "os_information=!os_information!%%a"
)

echo Hostname: %hostname%
echo Memory Information: %memory_information%
echo CPU Information:
echo %cpu_information%
echo OS Information:
echo %os_information%

@echo off
cls
setlocal
PUSHD %~DP0
TITLE TEST

echo.
%_NT.txt
chcp 949

echo
#############################################################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo #############################################################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo #########        Windos Script                 ##############>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo #######################s######################################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul

echo ########################JOB Time  ###########################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
date /t >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul 
time /t >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul 

echo #############################################################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul

echo ##################OS information  ###########################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul

echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
systeminfo						>>[RESULT]_%COMPUTERNAME%_SYSTEMINFO.txt
type [RESULT]_%COMPUTERNAME%_SYSTEMINFO.txt |find /I "OS" >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
type [RESULT]_%COMPUTERNAME%_SYSTEMINFO.txt |find /I "Domain" >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo OS Information >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul

echo #############################################################>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo.                                                             >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul


echo #######################Start  ############################## >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul

echo "SRV-0001 Start" >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo. >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo "[SRV-001] SNMP Community setting String low level" >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo. >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo "# rule : value changes and using community string character + Integer = 10 character raise good" >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo "# right now" >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo. >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo "# 1. contact service">>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
net start |find /I "SNMP" >> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo . >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo "#2 contact registre setting"
reg query "HKLM\SYSTEM\CurrentControlSet\Services\SNMP\Parameters\TrapConfiguration" \s	>> [RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo . >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo . >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo [SRV-001]END	>> [RESULT]_%COMPUTERNAME%_NT.txt
echo . >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul
echo ############################ >>[RESULT]_%COMPUTERNAME%_NT.txt 2>nul


















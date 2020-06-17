@echo off
Title MicroStar Anti-Virus
color 4
echo ***********************************
echo ** MicroStar Anti-Virus v0.6.3.1 **
echo ***********************************
%extd% /browseforfile "Browse for a file to scan" "C:\"
if "%result%"=="" (exit) else (set file=%result%)
echo ***Now scanning selected file..***
"MSScmd.exe" %result% --log=log\scan.log --database=db --kill --unload --move=quarantine --bell --show-progress --suppress-ok-results
(

	echo Scan completed.
	pause
	goto :eof

)

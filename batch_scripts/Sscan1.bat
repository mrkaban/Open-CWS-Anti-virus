@echo off
Title MicroStar Anti-Virus
color 4
echo *********************************
echo * MicroStar Anti-Virus v0.6.3.1 *
echo *********************************
%extd% /browseforfolder "Browse for a folder or drive to scan" "C:\"
if "%result%"=="" (exit) else (set folder="%result%")
echo ****Now scanning seleted drive/folder...****
"MSScmd.exe" --recursive %result% --log=log\scan.log --database=db --kill --unload --move=quarantine --bell --show-progress --infected --suppress-ok-results
(

	echo Scan completed.
	pause
	goto :eof

)

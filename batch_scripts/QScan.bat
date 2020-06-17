@echo off
color 4
Title MicroStar Anti-Virus
echo *********************************
echo * MicroStar Anti-Virus v0.6.3.1 *
echo *********************************
echo Starting Quick System scan.
echo ---------------------------
echo Now Scanning Disk Boot Sectors..
"MSScmd.exe" %SYSTEMDRIVE% --kill --unload --bell --show-progress --move=quarantine --suppress-ok-results --infected --database=db --log=log\scan.log
echo Starting Windows Folder Scan
"MSScmd.exe" %SYSTEMDRIVE%\Windows --kill --unload --bell --show-progress --move=quarantine --suppress-ok-results --infected --database=db --log=log\scan.log
"MSScmd.exe" --memory --log=log\memory.log --kill --unload --move=quarantine --bell --show-progress --suppress-ok-results --infected --database=db
(

	echo Scan completed.
	pause
	goto :eof

)
 
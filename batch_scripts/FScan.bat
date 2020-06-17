@echo off
color 4
Title MicroStar Anti-Virus
echo *********************************
echo * MicroStar Anti-Virus v0.6.3.1 *
echo *********************************
echo Starting Full OS Drive Scan.
echo ----------------------------
echo **Now starting Windows(R) Root Drive Scan
"MSScmd.exe" --recursive %SYSTEMDRIVE% --kill --unload --bell --database=db --show-progress --move=quarantine --suppress-ok-results --infected --log=log\scan.log
echo **Now scanning memory**
"MSScmd.exe" --memory --kill --unload --bell --database=db --show-progress --move=quarantine --suppress-ok-results --infected --log=log\memory.log
(

	echo Scan completed.
	pause
	goto :eof

)
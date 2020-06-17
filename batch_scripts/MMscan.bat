@echo off
color 4
Title MicroStar Anti-Virus
echo *********************************
echo * MicroStar Anti-Virus v0.6.3.1 *
echo *********************************
echo Starting Memory Scan
echo -------------------- 
"MSScmd.exe" --memory --log=log\memory.log --kill --unload --move=quarantine --bell --show-progress --suppress-ok-results --infected --database=db
(

	echo Scan completed.
	pause
	goto :eof

)
 
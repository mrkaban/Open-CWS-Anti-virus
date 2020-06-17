@echo off
color 09
Title MicroStar Anti-Virus
echo ***********************************
echo ** MicroStar Anti-Virus v0.6.3.1 **
echo ***********************************
echo ### Starting Database Update Process ###
"MSupd.exe" --config-file=ODupd.conf
(

	pause
	goto :eof

)
 
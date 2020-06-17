@echo off
color 09
Title MicroStar Anti-Virus
echo ***********************************
echo ** MicroStar Anti-Virus v0.6.3.1 **
echo ***********************************
echo Starting service....
echo Service started.
"MSupd.exe" --config-file=UEservice.conf --daemon

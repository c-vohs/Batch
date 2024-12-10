@echo off
set folder="C:\Program Files (x86)\Trend Micro\Client Server Security Agent"
set file="pccntmon.exe"
set parameter="-m )PAX1trend("
cd %folder%
%file% %parameter%



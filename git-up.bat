@echo off
E:\ZTX\Git\bin\git.exe pull origin main --rebase
E:\ZTX\Git\bin\git.exe add .
E:\ZTX\Git\bin\git.exe commit -m "Change"
E:\ZTX\Git\bin\git.exe push -u origin main
pause
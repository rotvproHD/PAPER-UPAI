@echo off
set apkernelv=2
call internet.cmd https://github.com/rotvproHD/PAPER-UPAI/raw/main/apkernel/version -saveTo C:\PAPERSTUDIOS\Temp\apkernel.tmp
FOR /F "delims=|" %%f in (C:\PAPERSTUDIOS\Temp\apkernel.tmp) DO (
set newapkernelv=%%f
)
if %newapkernelv% GTR %apkernelv% (
    appbrowserepl.cmd
) else (



call internet.cmd https://raw.githubusercontent.com/rotvproHD/PAPER-UPAI/main/Pages/pageinfos -saveTo C:\PAPERSTUDIOS\Temp\pginf.tmp
FOR /F "delims=|" %%f in (C:\PAPERSTUDIOS\Temp\pginf.tmp) DO (
set pages=%%f
)
if %pages% GTR 0 (
call internet.cmd https://raw.githubusercontent.com/rotvproHD/PAPER-UPAI/main/Pages/page1.bat -saveTo C:\PAPERSTUDIOS\Temp\upai-pages\pg1.bat
)
if %pages% GTR 1 (
call internet.cmd https://raw.githubusercontent.com/rotvproHD/PAPER-UPAI/main/Pages/page2.bat -saveTo C:\PAPERSTUDIOS\Temp\upai-pages\pg2.bat
)
if %pages% GTR 2 (
call internet.cmd https://raw.githubusercontent.com/rotvproHD/PAPER-UPAI/main/Pages/page3.bat -saveTo C:\PAPERSTUDIOS\Temp\upai-pages\pg3.bat
)
C:\PAPERSTUDIOS\Temp\upai-pages\pg1.bat

)
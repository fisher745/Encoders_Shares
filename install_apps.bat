@echo off
setlocal enabledelayedexpansion

set apps=^
7zip.7zip ^
CodeSector.TeraCopy ^
Python.Python.3.11 ^
MediaArea.MediaInfo.GUI ^
GuinpinSoft.MakeMKV ^
MoritzBunkus.MKVToolNix ^
AviSynth.AviSynthPlus ^
Nevcairiel.LAVFilters ^
Microsoft.VCRedist.2005.x86 ^
Microsoft.VCRedist.2005.x64 ^
Microsoft.VCRedist.2008.x86 ^
Microsoft.VCRedist.2008.x64 ^
Microsoft.VCRedist.2010.x64 ^
Microsoft.VCRedist.2010.x86 ^
Microsoft.VCRedist.2012.x86 ^
Microsoft.VCRedist.2012.x64 ^
Microsoft.VCRedist.2013.x86 ^
Microsoft.VCRedist.2013.x64 ^
Microsoft.VCRedist.2015+ ^
Microsoft.DotNet.Runtime.7

for %%a in (%apps%) do (
    echo Installing %%a...
    winget install --id %%a -e --accept-package-agreements --accept-source-agreements
)

echo.
echo All installations attempted. Press any key to exit.
pause >nul

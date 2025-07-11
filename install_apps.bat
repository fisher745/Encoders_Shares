@echo off
setlocal enabledelayedexpansion

echo.
echo ================================
echo Installing System Applications
echo ================================

:: Install each app via winget using multi-line format
winget install --id 7zip.7zip -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id CodeSector.TeraCopy -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Python.Python.3.11 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id MediaArea.MediaInfo.GUI -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id GuinpinSoft.MakeMKV -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id MoritzBunkus.MKVToolNix -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id AviSynth.AviSynthPlus -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Nevcairiel.LAVFilters -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2005.x86 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2005.x64 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2008.x86 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2008.x64 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2010.x64 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2010.x86 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2012.x86 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2012.x64 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2013.x86 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2013.x64 -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.VCRedist.2015+ -e --accept-package-agreements --accept-source-agreements ^
&& winget install --id Microsoft.DotNet.Runtime.7 -e --accept-package-agreements --accept-source-agreements

echo.
echo ================================
echo App installation complete!
echo ================================
pause

@echo off
SET packageVersion=1.0.2
SET oldPackageVersion=1.0.0
SET propsFileName=Springboard365.StyleCop.props
SET id=Springboard365.StyleCop
SET author="Springboard 365 Ltd"
SET repo="https://github.com/SpringBoard365/Springboard365.StyleCop"
SET description="StyleCop helper package from Springboard 365 Ltd ."
SET tags="StyleCop DotNetAnalyzers Roslyn Diagnostic Analyzer CleanCode"

cscript //NoLogo replace.vbs %propsFileName% %oldPackageVersion% %packageVersion%
echo Changed package version from %oldPackageVersion% to %packageVersion%

NuGet.exe pack Springboard365.StyleCop.nuspec -Build -symbols -Version %packageVersion% -Properties Configuration=Release;id=%id%;author=%author%;repo=%repo%;description=%description%;tags=%tags%;

NuGet.exe push Springboard365.StyleCop.%packageVersion%.nupkg -Source "https://api.nuget.org/v3/index.json"

pause
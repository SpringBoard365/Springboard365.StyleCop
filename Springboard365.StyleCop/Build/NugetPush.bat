@echo off
SET packageVersion=1.0.0-alpha02
SET id=Springboard365.StyleCop
SET author="Springboard 365 Ltd"
SET repo="https://github.com/SpringBoard365/Springboard365.StyleCop"
SET description="StyleCop helper package from Springboard 365 Ltd ."
SET tags="StyleCop DotNetAnalyzers Roslyn Diagnostic Analyzer CleanCode"

NuGet.exe pack Springboard365.StyleCop.nuspec -Build -symbols -Version %packageVersion% -Properties Configuration=Release;id=%id%;author=%author%;repo=%repo%;description=%description%;tags=%tags%;

NuGet.exe push Springboard365.StyleCop.%packageVersion%.nupkg -Source "https://api.nuget.org/v3/index.json"

pause
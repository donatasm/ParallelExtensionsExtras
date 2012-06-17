@echo off

SET ROOT=%~d0%~p0%
SET BINARYDIR="%ROOT%bin\Release"
SET SOURCEDIR="%ROOT%src"

IF EXIST %BINARYDIR% (
  rmdir /Q /S %BINARYDIR%
)
mkdir %BINARYDIR%

%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe %SOURCEDIR%\ParallelExtensionsExtras.sln  /property:OutDir=%BINARYDIR%\;Configuration=Release /target:rebuild
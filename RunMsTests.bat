if Exist TestResult.trx del TestResult.trx 

"%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\Common7\IDE\mstest.exe" /testcontainer:Specs\bin\Debug\Specs.dll /resultsfile:TestResult.trx 

pause

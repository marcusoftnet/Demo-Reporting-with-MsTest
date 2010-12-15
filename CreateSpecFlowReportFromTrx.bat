if Exist TestResult.trx del TestResult.trx 

"%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\Common7\IDE\mstest.exe" /testcontainer:%2 /resultsfile:TestResult.trx 

"%ProgramFiles(x86)%\TechTalk\SpecFlow\SpecFlow.exe" mstestexecutionreport %1 /testResult:TestResult.trx /out:TestResult.html

echo Created file TestResult.html
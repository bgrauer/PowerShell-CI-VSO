
[xml]$testobj = Get-Content .\TestResult.xml

If($testobj.'test-results'.failures -gt 0)
{
    Exit 1
}

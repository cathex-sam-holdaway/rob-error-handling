# rob-error-handling

The `Assert-DirExists` function calls the `Get-Directory` function. The `Get-Directory` function just runs Get-ChildItem and fails if the directory doesn't exist. The `Get-Directory` function uses Write-Error to say when it can't find the directory, and the `Assert-DirExists` checks the $Error variable and just writes out the exception, the contents of which are just what the Write-Error command in the `Get-Directory` function is "saying".
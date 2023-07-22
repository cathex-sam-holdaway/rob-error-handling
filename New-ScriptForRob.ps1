function Get-Directory {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $Path
    )

    try
    {
        Get-ChildItem $Path -ErrorAction Stop
    }
    catch 
    {
        Write-Error "I couldn't find directory $Path"
    }
}

function Assert-DirExists {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $Directory
    )

    try
    { 
        Get-Directory $Directory -ErrorAction Stop
    }
    catch
    {
        Write-Error $Error[0].Exception
    }
    finally
    {
        Write-Output "I'll do some cleanup here"
    }    
}


Assert-DirExists c:\DoesNotExist
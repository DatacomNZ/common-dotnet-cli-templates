param (
    [string]$version = "1.0.1-alpha",
    [string]$outputdirectory = ".\output"
)
./tools/nuget.exe pack ".\src\Pavlova\pavlova.nuspec" -Version $version -OutputDirectory $outputdirectory -NoDefaultExcludes
./tools/nuget.exe pack ".\src\CheeseCake\cheesecake.nuspec" -Version $version -OutputDirectory $outputdirectory -NoDefaultExcludes
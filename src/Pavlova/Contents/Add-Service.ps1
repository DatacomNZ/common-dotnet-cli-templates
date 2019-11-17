param (    
    [string]$projectName = $(Read-Host "Enter Service Project Name" )
 )
$project = "Pav.Lova.Service.$projectName"
$folderPath = ".\src\2. Services\$projectName\$project"

$testProj = "$folderPath.Tests\$project.Tests.csproj"

# Create .net projects and add to Solution
dotnet new classlib -lang c# -f {{targetframework}} -o $folderPath
dotnet new mstest -lang c#  -f {{targetframework}} -o "$folderPath.Tests"
dotnet sln add "$folderPath\$project.csproj"
dotnet sln add $testProj

# Add Test Project to Test script.
Add-Content .\Test.ps1 "`r`ndotnet test `"$testProj`" --logger:trx"
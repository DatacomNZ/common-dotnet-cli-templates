param (    
    [string]$reactProjectName = $(Read-Host "Enter React Project" )
 )

$rootLocation = Get-Location
$srcFolder = ".\src\4. Presentation\"
New-Item -ItemType Directory -Force -Path $srcFolder
Set-Location $srcFolder

$projectName = "Pav.Lova.presentation.$reactProjectName".ToLower()

npx https://github.com/datacomnz/create-react-project-cli.git $projectName

Set-Location $rootLocation

Add-Content .\Build.ps1 ";`$location = Get-location;Set-Location `".\src\4. Presentation\$projectName`"; npm i;set-location `$location;"
Add-Content .\Run.ps1 ";Start-Process -FilePath `"npm`" -ArgumentList `"run`", `"start`", '--prefix `".\src\4. Presentation\$projectName`"'"
Add-Content .\Package.ps1  ";`$path = `".\src\4. Presentation\$projectName`"`;`$location = Get-location;Set-Location `$path; npm run build;set-location `$location;Copy-Item `"`$path\build\*`" -Destination `"`$outputdirectory\$projectName`" -force -Recurse"

Write-Host "React Project created in .\src\4. Presentation\$projectName" -foregroundColor Green
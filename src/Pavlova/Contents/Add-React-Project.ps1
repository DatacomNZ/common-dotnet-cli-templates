param (    
    [string]$reactProjectName = $(Read-Host "Enter React Project" )
 )

 Write-Host "Select State manager:"
 Write-Host "Enter '1' for Redux"
 Write-Host "Enter '2' for Mobx"
 $useStateManager = Read-Host "Enter selection:"

 Write-Host "Select Web Component Library:"
 Write-Host "Enter '1' for react-bootstrap"
 Write-Host "Enter '2' for react material ui"
 Write-Host "Enter '3' for react blueprint"
 $useWebComponents = Read-Host "Enter selection:"

$rootLocation = Get-Location
$srcFolder = ".\src\4. Presentation\"
New-Item -ItemType Directory -Force -Path $srcFolder
Set-Location $srcFolder

$projectName = "Pav.Lova.presentation.$reactProjectName".ToLower()

npx create-react-app $projectName --typescript

Set-location ".\$projectName"

New-Item -ItemType Directory -Force -Path ".\src\assets"
New-Item -ItemType Directory -Force -Path ".\src\components"
New-Item -ItemType Directory -Force -Path ".\src\containers"
New-Item -ItemType Directory -Force -Path ".\src\services"
New-Item -ItemType Directory -Force -Path ".\src\utils"

npm install --save react-router-dom

if ($useStateManager = '1') {
    npm install --save redux @types/redux
    npm install --save react-redux @types/react-redux
}
elseif ($useStateManager = '2') {
    npm install --save mobx-react
}

if ($useWebComponents = '1') {
    npm install react-bootstrap bootstrap
}
elseif ($useWebComponents = '2') {
    npm install @material-ui/core

    Write-Host 'Todo: add <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" /> to public\index.html' -foregroundColor Red
}
elseif ($useWebComponents = '3') {
    npm install @blueprintjs/core
}

Set-Location $rootLocation

Add-Content .\Build.ps1 ";`$location = Get-location;Set-Location `".\src\4. Presentation\$projectName`"; npm i;set-location `$location;"
Add-Content .\Run.ps1 ";Start-Process -FilePath `"npm`" -ArgumentList `"run`", `"start`", '--prefix `".\src\4. Presentation\$projectName`"'"
Add-Content .\Package.ps1  ";`$path = `".\src\4. Presentation\$projectName`"`;`$location = Get-location;Set-Location `$path; npm run build;set-location `$location;Copy-Item `"`$path\build\*`" -Destination `"`$outputdirectory\$projectName`" -force -Recurse"

Write-Host "React Project created in .\src\4. Presentation\$projectName" -foregroundColor Green
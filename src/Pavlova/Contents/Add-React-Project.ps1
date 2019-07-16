param (    
    [string]$reactProjectName = $(Read-Host "Enter React Project" ),
    [string]$useRedux = $(Read-Host "Use redux? (type yes to proceed)?")
 )
$rootLocation = Get-Location
$srcFolder = ".\src\4. Presentation\"
New-Item -ItemType Directory -Force -Path $srcFolder
Set-Location $srcFolder

npx create-react-app $reactProjectName.ToLower() --typescript

Set-location ".\$reactProjectName"

New-Item -ItemType Directory -Force -Path ".\src\assets"
New-Item -ItemType Directory -Force -Path ".\src\components"
New-Item -ItemType Directory -Force -Path ".\src\containers"
New-Item -ItemType Directory -Force -Path ".\src\services"
New-Item -ItemType Directory -Force -Path ".\src\utils"

npm install --save react-router-dom

if ($useRedux = 'yes') {
    npm install --save redux @types/redux
    npm install --save react-redux @types/react-redux
}

Set-Location $rootLocation

Add-Content .\Build.ps1 ";`$location = Get-location;Set-Location `".\src\4. Presentation\$reactProjectName`"; npm i;set-location `$location;"
Add-Content .\Run.ps1 ";Start-Process -FilePath `"npm`" -ArgumentList `"run`", `"start`", '--prefix `".\src\4. Presentation\$reactProjectName`"'"

Write-Host "React Project created in .\src\4. Presentation\$reactProjectName" -foregroundColor Green
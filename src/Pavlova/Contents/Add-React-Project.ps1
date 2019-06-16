param (    
    [string]$reactProjectName = $(Read-Host "Enter React Project" ),
    [string]$useRedux = $(Read-Host "Use redux? (type yes to proceed)?")
 )
$srcFolder = ".\src\4. Presentation\"
#$rootLocation = Get-Location
New-Item -ItemType Directory -Force -Path $srcFolder
Set-Location $srcFolder

npx create-react-app $reactProjectName --typescript

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

Write-Host "React Project created in .\src\4. Presentation\$reactProjectName" -foregroundColor Green
param (
    [string]$outputdirectory = "./output"
)

if ([System.IO.Path]::IsPathRooted($outputdirectory) -eq $false) {
    New-Item -ItemType Directory -Force -Path $outputdirectory
    $outputdirectory = Resolve-Path $outputdirectory
}
dotnet publish ".\src\4. Presentation\Pav.Lova.Presentation.Api\Pav.Lova.Presentation.Api.csproj" -c Release --output "$outputdirectory/Pav.Lova.Presentation.Api"
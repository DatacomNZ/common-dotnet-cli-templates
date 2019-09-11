param (
    [string]$outputdirectory = "./output"
)
dotnet publish ".\src\4. Presentation\Pav.Lova.Presentation.Api\Pav.Lova.Presentation.Api.csproj" -c Release --output "$outputdirectory/Pav.Lova.Presentation.Api"
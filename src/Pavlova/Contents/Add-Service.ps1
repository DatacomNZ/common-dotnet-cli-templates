param (    
    [string]$serviceName = $(Read-Host "Enter Service Name" )
 )
dotnet new classlib -lang c#  -f netstandard2.0 -o ".\src\2. Services\$serviceName\Pav.Lova.Service.$serviceName"
dotnet new mstest -lang c#  -o ".\src\2. Services\$serviceName\Pav.Lova.Service.$serviceName.Tests"
dotnet sln add ".\src\2. Services\$serviceName\Pav.Lova.Service.$serviceName\Pav.Lova.Service.$serviceName.csproj"
dotnet sln add ".\src\2. Services\$serviceName\Pav.Lova.Service.$serviceName.Tests\Pav.Lova.Service.$serviceName.Tests.csproj"
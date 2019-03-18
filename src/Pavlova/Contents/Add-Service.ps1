param (    
    [string]$serviceName = $(Read-Host "Enter Service Name" )
 )
dotnet new classlib -lang c#  -f netstandard2.0 -o ".\src\2. Services\$serviceName\onion.Service.$serviceName"
dotnet new mstest -lang c#  -o ".\src\2. Services\$serviceName\onion.Service.$serviceName.Tests"
dotnet sln add ".\src\2. Services\$serviceName\onion.Service.$serviceName\onion.Service.$serviceName.csproj"
dotnet sln add ".\src\2. Services\$serviceName\onion.Service.$serviceName.Tests\onion.Service.$serviceName.Tests.csproj"
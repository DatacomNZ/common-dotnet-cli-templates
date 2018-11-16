IF NOT "%1"=="" (
dotnet new classlib -lang c#  -f netstandard2.0 -o ".\src\2. Services\%1\onion.Service.%1"
dotnet new mstest -lang c#  -o ".\src\2. Services\%1\onion.Service.%1.Tests"
dotnet sln add ".\src\2. Services\%1\onion.Service.%1\onion.Service.%1.csproj"
dotnet sln add ".\src\2. Services\%1\onion.Service.%1.Tests\onion.Service.%1.Tests.csproj"
)
IF "%1"=="" (
	ECHO "Service name is missing"
)
pause
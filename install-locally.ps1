param (
    [string]$version = "1.0.1-alpha"
)
dotnet new -u "pavlova"
dotnet new -i ".\Output\pavlova.$version.nupkg"

dotnet new -u "cheesecake"
dotnet new -i ".\output\cheesecake.$version.nupkg"
# common-dotnet-cli-templates Project

## Purpose
This project contains the code to generate nuget package templates for use with the dotnet cli.

## Pavlova Template
The pavlova template is an implementation of the clean/onion architecture.

Clean Architecture is just the latest in a series of names for the same loosely-coupled, 
dependency-inverted architecture. You will also find it named hexagonal, ports-and-adapters, or onion architecture.

This implementation is based on recommendations from the midlands Solution Architecture team. 
It includes custom nuget packages that we want to use throughout our solutions.
1. Datacom.Common
2. Datacom.collections

which are implemented in  https://gitlab.datacomdev.co.nz/Midlands/Tools/common-nuget-packages solution.

It is named pavlova cause cakes have layers too!

### Usage

<code>dotnet new pavlova [--name {solutionName}]</code>
-name is not required. The template derives the name from the folder name.

### Installation
<code>
dotnet new -i "pavlova" --nuget-source "http://dslhlzdevsvr.midlands.net/guestAuth/app/nuget/v1/FeedService.svc/"</code>
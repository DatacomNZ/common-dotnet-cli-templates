# common-dotnet-cli-templates Project

## Purpose
This project contains the code to generate nuget package templates for use with the dotnet cli.

## Pavlova Template
The pavlova template is an implementation of the clean/onion architecture.

Clean Architecture is just the latest in a series of names for the same loosely-coupled, 
dependency-inverted architecture. You will also find it named hexagonal, ports-and-adapters, or onion architecture.

This implementation is based on recommendations from the midlands Solution Architecture team. 
It includes custom nuget packages that we want to use throughout our solutions.
1. Datacom.CommonCore
2. Datacom.CommonCore.Collections
3. Datacom.CommonCore.Diagnostics

which are implemented in  https://gitlab.datacomdev.co.nz/Midlands/Tools/common-nuget-packages solution.

It is named pavlova cause cakes have layers too!

### Usage

<code>dotnet new pavlova [--name {solutionName}]</code>

-name is not required. The template derives the name from the folder name.

### Installation
<code>dotnet new -i "pavlova" --nuget-source "https://pkgs.dev.azure.com/MidlandsAzure/_packaging/Common/nuget/v3/index.json"</code>

## Cheesecake Template
The cheesecake template is an ALTERNATIVE implementation of the clean/onion architecture.

This implementation is also based on recommendations from the midlands Solution Architecture team. 
It includes custom nuget packages that we want to use throughout our solutions.
1. Datacom.CommonCore
2. Datacom.CommonCore.Collections
3. Datacom.CommonCore.Diagnostics

### Usage

<code>dotnet new cheesecake [--name {solutionName}]</code>

-name is not required. The template derives the name from the folder name.

### Installation

<code>dotnet new -i "cheesecake" --nuget-source "https://pkgs.dev.azure.com/MidlandsAzure/_packaging/Common/nuget/v3/index.json"</code>

## Installation Authorization
If you are denied access to the nuget feed.
You will need to set up the Azure Artifacts Credential Provider on your machine. (https://github.com/microsoft/artifacts-credprovider#azure-artifacts-credential-provider)

Follow the installation instructions in the readme.

After installation, you just rerun the dotnet new commands to install pavlova or cheesecake.
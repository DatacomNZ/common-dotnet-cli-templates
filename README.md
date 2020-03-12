# common-dotnet-cli-templates Project

## Purpose
This project contains the code to generate nuget package templates for use with the dotnet cli.

## Cheesecake Template
The Cheesecake template is an implementation of the clean/onion architecture.

Clean Architecture is just the latest in a series of names for the same loosely-coupled, 
dependency-inverted architecture. You will also find it named hexagonal, ports-and-adapters, or onion architecture.

This implementation is based on recommendations from the midlands Solution Architecture team. 
It includes custom nuget packages that we want to use throughout our solutions.
1. Datacom.CommonCore
2. Datacom.CommonCore.Collections
3. Datacom.CommonCore.Diagnostics

It is named Cheesecake cause cakes have layers too!

### Usage

<code>dotnet new cheesecake [--name {solutionName}]</code>

-name is not required. The template derives the name from the folder name.

### Installation
<code>dotnet new -i "cheesecake"</code>

## Pavlova Template
The Pavlova template is an ALTERNATIVE implementation of the clean/onion architecture.

This implementation is also based on recommendations from the midlands Solution Architecture team. 
It includes custom nuget packages that we want to use throughout our solutions.
1. Datacom.CommonCore
2. Datacom.CommonCore.Collections
3. Datacom.CommonCore.Diagnostics

### Usage

<code>dotnet new pavlova [--name {solutionName}]</code>

-name is not required. The template derives the name from the folder name.

### Installation

<code>dotnet new -i "pavlova"</code>
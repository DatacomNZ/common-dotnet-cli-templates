# Solution Implementation

This solution is built on Clean/Onion Architecture principles.

It uses certain terminology to achieve this architecture.
	1. Domain layer
	Contains the models, enumerations and interfaces that are used
	to define the infrastructure of the solution.

	2. Services layer (Can be one or many projects)
	Each Project implements a single responsibility task such as 
	Email tasks, Database Context, Calls to external api' etc.

	3. Infrastructure layer
	Contains the implementation of the interfaces defined in the Domain.

	4. Presentation layer (Can be one or many projects)
	Contains the UI interface to the solution. This can be anything like a 
	Website, Console App, Windows App or simply an Api Service.

## Build.ps1

Use this file to complete a full build of the solution.
This file can implement other solution resources such as 
	
* npm installs
* webpack build etc.

### Package.ps1

Use this file to complete a full build of the solution and to create 
a package to deploy to another environment.

This is useful if you are building a deployment package from
with npm/webpack builds.

### Run.ps1

Use this file to run the application. This is useful 
if you have multiple startup projects. (i.e React/Webpack server etc)

### add-react-project.ps1

Adds a react project to the solution using https://github.com/DatacomNZ/create-react-project-cli.
It updates the build.ps1/package.ps1 and run.ps1 to include the react project.

## Notes
This is a boilerplate solution. It can be customised entirely to suit the requirements of the project.
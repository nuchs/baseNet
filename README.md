# baseNet
Base project for working with dotnet in containers on VS Code

## Prereqs

The following plugins are required

* https://github.com/OmniSharp/omnisharp-vscode
* https://github.com/Microsoft/vscode-remote-release
* https://github.com/josefpihrt/roslynator

These ones are for sanity

* https://github.com/VSCodeVim/Vim
* https://github.com/microsoft/vscode-docker
* https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets
* https://marketplace.visualstudio.com/items?itemName=albert.TabOut

## Make a new project

Copy the entire directory and rename it to whatever the project should be called

    $ mkdir -p src/<project name> tests/<project name>Tests
    $ cd src/<project name>
    $ dotnet new console
    $ cd ../../tests/<project name>Tests
    $ dotnet new nunit
    $ dotnet add reference ../../src/<project name>/<project name>.csproj
    $ cd ../..
    $ dotnet new sln
    $ dotnet sln add src/<project name>/<project name>.csproj  tests/<project name>Tests/<project name>Tests.csproj
    $ dotnet restore

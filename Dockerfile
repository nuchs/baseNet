FROM mcr.microsoft.com/dotnet/core/runtime:3.1

COPY src/myapp/bin/Release/netcoreapp3.1/publish/ app/

ENTRYPOINT [ "dotnet", "app/myapp.dll" ]
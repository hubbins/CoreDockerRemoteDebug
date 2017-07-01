FROM microsoft/aspnetcore:1

RUN apt-get update
RUN apt-get -y install curl unzip
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg

COPY publish /app
WORKDIR /app
ENTRYPOINT ["dotnet", "CoreDockerRemoteDebug.dll"]

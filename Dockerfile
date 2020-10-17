FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
COPY bin/Release/netcoreapp3.1/publish /App
COPY Certificates/ /etc/ssl/certs/
COPY Certificates/ /App/Certificates

WORKDIR /App

ENV ASPNETCORE_URLS http://*:8080
ENV ASPNETCORE_ENVIRONMENT Development
EXPOSE 8080

ENTRYPOINT ["dotnet", "kubapi.dll"]

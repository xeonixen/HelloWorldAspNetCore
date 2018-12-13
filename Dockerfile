FROM gcr.io/google-appengine/aspnetcore:2.1
ADD ./bin/Release/netcoreapp2.1/publish/ /app
ENV ASPNETCORE_URLS=http://*:${PORT}
WORKDIR /app
ENTRYPOINT [ "dotnet", "HelloWorldAspNetCore.dll"]

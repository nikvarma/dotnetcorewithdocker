FROM microsoft/aspnetcore:2.0
ARG source
RUN apt-get update
RUN apt-get install -y libgdiplus
WORKDIR /app
EXPOSE 80
COPY ${source:-obj/Docker/publish} .
ENTRYPOINT ["dotnet", "BarCodeGenerator.dll"]

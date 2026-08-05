FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

# Kopiraj cijeli sadržaj publish mape u /app
COPY ./publish/. /app/

# Kopiraj startup skriptu
COPY ./run.sh /run.sh

RUN chmod +x /run.sh

ENV ASPNETCORE_URLS=http://+:5000
ENV DOTNET_RUNNING_IN_CONTAINER=true

EXPOSE 5000

ENTRYPOINT ["/bin/sh", "/run.sh"]

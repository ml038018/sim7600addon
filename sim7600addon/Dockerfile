FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

COPY publish/ .

COPY run.sh /run.sh

RUN chmod a+x /run.sh

EXPOSE 5000

ENV ASPNETCORE_URLS=http://+:5000

ENTRYPOINT ["/run.sh"]

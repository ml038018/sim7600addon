FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

COPY publish/ .

COPY run.sh /run.sh

RUN chmod a+x /run.sh

ENV ASPNETCORE_URLS=http://+:5000

EXPOSE 5000

ENTRYPOINT ["/run.sh"]

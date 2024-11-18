FROM mcr.microsoft.com/dotnet/sdk:9.0

ENV DOTNET_CLI_TELEMETRY_OPTOUT=true \
    DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true \
    NODE_VERSION=23.x

RUN apt-get update && apt-get install -y \
    curl \
    gnupg 

RUN curl -fsSL https://deb.nodesource.com/setup_$NODE_VERSION | bash - \
    && apt-get install -y nodejs 

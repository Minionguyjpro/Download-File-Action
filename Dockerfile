FROM ubuntu:18.04

LABEL "com.github.actions.name"="Download File Action"
LABEL "com.github.actions.description"="GitHub Action to download files from certain URL"

RUN apt-get update \
    && apt-get install wget -y \
    && apt-get install git-all -y \
    && wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y powershell
    
    

ADD entrypoint.ps1 /entrypoint.ps1
ENTRYPOINT ["pwsh", "/entrypoint.ps1"]

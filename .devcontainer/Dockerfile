FROM mcr.microsoft.com/vscode/devcontainers/php:8-bullseye

# Fix expired Yarn GPG key (upstream issue)
RUN curl -fsSL https://dl.yarnpkg.com/debian/pubkey.gpg \
    | gpg --dearmor -o /usr/share/keyrings/yarn.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/yarn.gpg] https://dl.yarnpkg.com/debian stable main" \
    > /etc/apt/sources.list.d/yarn.list

# update apt
RUN apt update

# install httpie
RUN apt install -y httpie

# install flyway
WORKDIR /usr/local
RUN wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/8.0.0-beta1/flyway-commandline-8.0.0-beta1-linux-x64.tar.gz \
 | tar xvz \
 && ln -s /usr/local/flyway-8.0.0-beta1/flyway /usr/local/bin/flyway

WORKDIR ~
ENTRYPOINT ["/bin/bash"]
FROM node:18

LABEL "com.github.actions.name"="Verdaccio Private Registry"
LABEL "com.github.actions.description"="Publish on Verdaccio v4"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="#4b5e40"

LABEL "repository"="https://github.com/Big-Bro222/UnityPackageExample"
LABEL "homepage"="https://big-bro222.github.io/"
LABEL "maintainer"="ZeQi <ze.qi@outlook.com>"

RUN npm install -g npm@6 && \
    npm install -g verdaccio && \
	npm install -g verdaccio-auth-memory && \
	npm install -g verdaccio-memory && \
	npm install -g npm-auth-to-token@1.0.0

COPY config.yaml /config.yaml

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

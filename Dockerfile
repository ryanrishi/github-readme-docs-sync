FROM node:alpine3.10

RUN npm install --global rdme

ENV INPUT_DOCS_FOLDER="docs"
ENV INPUT_README_API_KEY="replaceme"
ENV INPUT_API_VERSION="1.0.0"

VOLUME [ "/docs" ]

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]


ARG RESTACK_PRODUCT_VERSION=latest

FROM directus/directus:${RESTACK_PRODUCT_VERSION}

USER root
RUN corepack enable \
  && corepack prepare pnpm@8.9.0 --activate

USER node
# RUN pnpm install directus-extension-package-name // Replace package-name

COPY ./extensions ./directus/extensions
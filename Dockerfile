FROM nginx:1.20-alpine as base

RUN apk add --no-cache curl

WORKDIR /test

COPY . .

#########################
FROM base as test

#layer test tools and assets on top as optional test stage
RUN apk add --no-cache apache2-utils


#########################
FROM base as final

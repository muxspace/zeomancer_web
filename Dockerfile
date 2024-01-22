#FROM klakegg/hugo:0.101.0-ext-alpine
FROM hugomods/hugo:exts-0.121.2

LABEL maintainer="devops@zatonovo.com"

RUN apk add --update npm yarn
# && npm install -g firebase-tools --unsafe-perm

EXPOSE 1313

WORKDIR /app

COPY ./ ./
#RUN npm install
RUN yarn

WORKDIR /app/site

ENTRYPOINT ["npm"]
CMD ["start"]
#CMD ["server", "--themesDir", "../themes"]
#CMD ["server", "--environment", "prod", "--themesDir", "../themes"]

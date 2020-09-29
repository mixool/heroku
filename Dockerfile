FROM alpine:edge
COPY csteps /usr/local/bin/
ENV PORT                3000
ENV APASSWORD           password
ENV CADDYCONFIG         https://raw.githubusercontent.com/Tarukas/heroku/master/etc/Caddyfile
ENV CADDYIndexPage      https://raw.githubusercontent.com/caddyserver/dist/master/welcome/index.html
ENV TOREnable           true
ENV GOSTEnable          true
ENV GOSTversion         2.11.1
ENV GOSTPATH            /gostpath
ENV BROOKEnable         true
ENV BROOKPATH           /brookpath
ENV SSEnable            true
ENV SSPLversion         1.3.1
ENV SSENCYPT            chacha20-ietf-poly1305
ENV SSPATH              /sspath
ENV V2RAYEnable         true
ENV V2RAYPROTOCOL       vless
ENV V2RAYPATH           /v2raypath
ENV AUUID               8f91b6a0-e8ee-11ea-adc1-0242ac120002
ENV V2RAYCONFIG         https://raw.githubusercontent.com/Tarukas/heroku/master/etc/v2ray.json
RUN csteps 1
ADD start.sh /start.sh
RUN csteps 2
CMD /start.sh
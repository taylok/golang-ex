FROM scratch

ENV WEB_SERVER_PORT :8080
EXPOSE $WEB_SERVER_PORT

COPY hello /
COPY templates templates

CMD ["/hello"]

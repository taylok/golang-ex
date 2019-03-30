FROM golang:1.11 

ENV WEB_SERVER_PORT :8080
EXPOSE $WEB_SERVER_PORT

RUN go build -ldflags="-s -w" -o hello .
COPY templates templates

CMD ["/hello"]

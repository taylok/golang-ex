FROM golang:1.11 

ADD . /go/src/hello
WORKDIR /go/src/hello
RUN go install 

ENV WEB_SERVER_PORT :8080
EXPOSE $WEB_SERVER_PORT

CMD ["/go/bin//hello"]

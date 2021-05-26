FROM golang:1.16
WORKDIR /go/src/app

COPY . .

RUN go clean -modcache
RUN go get -d -v
RUN go install -v

CMD ["fryatog"]

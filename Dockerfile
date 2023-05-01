FROM golang:1.16-alpine

WORKDIR /app


COPY go.mod go.sum ./

RUN go mod download

COPY . ./


RUN go build snippetbox.baron.net/cmd/web

EXPOSE 4000

CMD ["/snippetbox"]
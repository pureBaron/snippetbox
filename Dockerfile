FROM golang:1.19

WORKDIR /app


COPY go.mod go.sum ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o ./cmd/web/main.go


EXPOSE 4000

CMD ["/snippetbox.baron.net"]
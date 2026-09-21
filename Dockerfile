FROM golang:1.24-alpine AS builder

WORKDIR /app

RUN apk add --no-cache ca-certificates git

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o /app/go-api ./main.go

FROM alpine:3.20

WORKDIR /app

RUN apk add --no-cache ca-certificates curl && \
    curl -sS "https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem" -o /usr/local/share/ca-certificates/rds-global-bundle.crt && \
    update-ca-certificates

COPY --from=builder /app/go-api /app/go-api

EXPOSE 5000

CMD [ "/app/go-api" ]
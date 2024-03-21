FROM golang:1.15 AS builder
COPY . .
RUN go build -ldflags="-s -w" -o fullcycle .

FROM alpine:2.6
COPY --from=builder /go/fullcycle .
RUN chmod +x fullcycle
CMD ["./fullcycle"]
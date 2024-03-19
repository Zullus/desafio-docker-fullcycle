FROM golang:1.15
COPY . .
RUN go build -o fullcyce .
CMD ["./fullcyce"]
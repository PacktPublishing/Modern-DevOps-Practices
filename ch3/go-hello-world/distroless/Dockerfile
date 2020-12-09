FROM golang:1.12.4 AS build
WORKDIR /tmp
COPY app.go .
RUN GOOS=linux go build -a -installsuffix cgo -o app . && chmod +x ./app

FROM gcr.io/distroless/base
WORKDIR /tmp
COPY --from=build /tmp/app .
CMD ["./app"]

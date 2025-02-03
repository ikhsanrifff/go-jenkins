FROM golang:1.23.4

# Set work directory
WORKDIR /app
# Salin file
COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o go-jenkins

CMD ["./go-jenkins"]

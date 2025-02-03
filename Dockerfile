# Using image Go sebagai base image
FROM golang:1.23.4

# Set work directory
WORKDIR /app

# Salin file go.mod dan go.sum
COPY go.mod ./

# Download dependency
RUN go mod download

# Salin source code ke kontainer
COPY . .

# Build app
RUN go build -o /go-jenkins

# Command untuk run aplikasi
CMD ["./go-jenkins"]
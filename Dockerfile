from golang:1.3

ENV CGO_ENABLED 0
add . /go/src/github.com/nathanleclaire/tiny-go-fileserver
cmd ["go", "get", "-a", "-ldflags", "'-s'", "github.com/nathanleclaire/tiny-go-fileserver"]

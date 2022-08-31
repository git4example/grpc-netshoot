FROM golang:alpine

RUN go env -w GO111MODULE=auto
RUN apk update
RUN apk add --virtual build-dependencies git
RUN apk add bash curl jq
# RUN go get -u github.com/fullstorydev/grpcurl
# RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl
RUN go env -w GOPROXY=https://goproxy.io,direct
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
RUN rm -rf /go/pkg
RUN rm -rf /go/src
RUN apk del build-dependencies
RUN rm -rf /var/cache/apk/*

FROM nicolaka/netshoot
COPY --from=0 /usr/local/go/ /usr/local/go/
COPY --from=0 /go/bin /go/bin
WORKDIR /
ENV PATH="/usr/local/go/bin:/go/bin:${PATH}"

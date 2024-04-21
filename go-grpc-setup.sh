#!/bin/bash

protoc_url="https://github.com/protocolbuffers/protobuf/releases/download/v26.0/protoc-26.0-linux-x86_64.zip"
gobin="$(go env GOBIN)"

echo "--- Install protoc ---"
wget -P ~/Downloads $protoc_url -O ~/Downloads/proto.zip
unzip -d ~/Downloads/proto ~/Downloads/proto.zip
cp ~/Downloads/proto/bin/protoc $gobin

echo "--- Install protoc-gen-go ---"
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

# Install grpc gateway, modify version if neccessary
echo "--- Install grpc-gateway ---"
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

echo "--- Cleanup ---"
rm -f ~/Downloads/proto.zip
rm -rf ~/Downloads/proto
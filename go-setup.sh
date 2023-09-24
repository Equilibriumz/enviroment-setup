#!/bin/bash

echo "--- Install Golang ---"
snap install go --channel="1.18/stable" --classic
go version

echo "--- Setup project directory ---"
export PROJECT_DIR=$HOME/Projects
export GO_DIR=$PROJECT_DIR/go
mkdir $PROJECT_DIR
mkdir $GO_DIR
mkdir $GO_DIR/src
mkdir $GO_DIR/src/github.com

echo "--- Setup Golang enviroment variables ---"
go env -w GO111MODULE=""
go env -w GOPATH=$HOME/Projects/go
go env -w GOBIN=$HOME/Projects/go/bin
export GOROOT=/snap/go/current
export PATH=$HOME/Projects/go/bin:$PATH
export PATH=$HOME/Projects/go:$PATH
echo "--- Setup environment done ---"

echo "--- Setup Goland - latest ---"
snap install goland --classic

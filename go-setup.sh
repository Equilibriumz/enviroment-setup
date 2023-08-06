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

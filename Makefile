BINARY := blockchain

all: build test

build: deps
	@echo "====> Go build"
	@go build -o $(BINARY)

deps:
	@go get -u github.com/boltdb/bolt

test:
	./$(BINARY) printchain
	./$(BINARY) addblock -data "Send 1 BTC to fash"
	./$(BINARY) addblock -data "Pay 2.31337 BTC for a meili"
	./$(BINARY) printchain

.PHONY: build deps test

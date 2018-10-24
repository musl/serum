
.PHONY: all bench clean generate lib

all: clean test

clean:
	go clean .
	rm -f *.out *.png *.gen.go

generate:
	go generate .

lib: generate
	go build .

test: clean generate
	go test -v -memprofile mem.out -cpuprofile cpu.out .

bench: lib
	go test -bench -v -memprofile mem.out -cpuprofile cpu.out .

graphs: bench
	go tool pprof --png libgofr.test cpu.out > cpu_graph.png
	go tool pprof --png libgofr.test mem.out > mem_graph.png


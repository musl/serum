package serum

import "fmt"

//go:generate bash ./constants.gen.go.sh

// Model describes
type Model interface {
}

// PrintStuff prints constants
func PrintStuff() {
	fmt.Printf("%s\n%s\n%s\n%s\n", Version, Revision, Contributors, License)
}

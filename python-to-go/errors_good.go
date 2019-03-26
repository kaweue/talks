package main

import "log"

type netError bool

func doStuff() error {
	return netError(true)
}

// START OMIT
type temporary interface {
	Temporary() bool
}

func (n netError) Temporary() bool {
	return bool(n)
}
func (n netError) Error() string {
	return "it should work fine in a minute"
}

func isTemporary(err error) bool {
	te, ok := err.(temporary)
	return ok && te.Temporary()
}

func main() {
	err := doStuff()
	if isTemporary(err) {
		log.Printf("Nothing to worry about: %v", err)
	} else {
		log.Fatalf("%v", err)
	}
}

// END OMIT

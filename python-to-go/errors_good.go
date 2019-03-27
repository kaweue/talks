package main

import "log"

type netError struct {
	temporary bool
}

func doStuff() error {
	return &netError{
		temporary: true,
	}
}

// START OMIT
type myError interface {
	Temporary() bool
}

func (n netError) Temporary() bool {
	return n.temporary
}
func (n netError) Error() string {
	return "it should work fine in a minute"
}

func isTemporary(err error) bool {
	te, ok := err.(myError)
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

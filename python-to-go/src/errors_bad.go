package main

import (
	"fmt"
	"log"
)

// START OMIT
const temporaryError = "it should work fine in a minute"

func doStuff() error {
	return fmt.Errorf("%v", temporaryError)
}

func main() {
	err := doStuff()
	if err.Error() == temporaryError {
		log.Printf("Nothing to worry about: %v", err)
	} else {
		log.Fatalf("%v", err)
	}
}

// END OMIT

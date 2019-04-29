package main

import (
	"encoding/json"
	"fmt"
)

// START OMIT
type dog struct {
	Name string
	Age  int
}

func unmarshalGoodBoi(gb string) {
	d := dog{}
	json.Unmarshal([]byte(gb), &d)
	fmt.Printf("JSON: %s -> Go: %+v\n", gb, d)
}

func main() {
	unmarshalGoodBoi(`{"Name":"","Age": 2}`)
	unmarshalGoodBoi(`{"Age": 2}`)
}

// END OMIT

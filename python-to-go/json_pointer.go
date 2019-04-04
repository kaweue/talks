package main

import (
	"encoding/json"
	"fmt"
)

func unmarshalGoodBoi(gb string) {
	d := dog{}
	json.Unmarshal([]byte(gb), &d)
	fmt.Printf("JSON: %s -> Go: %+v\n", gb, d)
}

// START OMIT
type dog struct {
	Name *string
	Age  *int
}

//func (d dog) String() string {
//	return fmt.Sprintf("{Name:%v, Age:%v}", *d.Name, *d.Age)
//}

func main() {
	unmarshalGoodBoi(`{"Name":"","Age": 2}`)
	unmarshalGoodBoi(`{"Age": 2}`)
}

// END OMIT

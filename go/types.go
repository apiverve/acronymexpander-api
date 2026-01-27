package acronymexpander

import (
	"fmt"
	"reflect"
	"strings"
)

// Request contains the parameters for the Acronym Expander API.
type Request struct {
	Acronym string `json:"acronym"` // Required
	Context string `json:"context,omitempty"` // Optional
}

// ToQueryParams converts the request struct to a map of query parameters.
// Only non-zero values are included.
func (r *Request) ToQueryParams() map[string]string {
	params := make(map[string]string)
	if r == nil {
		return params
	}

	v := reflect.ValueOf(*r)
	t := v.Type()

	for i := 0; i < v.NumField(); i++ {
		field := v.Field(i)
		fieldType := t.Field(i)

		// Get the json tag for the field name
		jsonTag := fieldType.Tag.Get("json")
		if jsonTag == "" {
			continue
		}
		// Handle tags like `json:"name,omitempty"`
		jsonName := strings.Split(jsonTag, ",")[0]
		if jsonName == "-" {
			continue
		}

		// Skip zero values
		if field.IsZero() {
			continue
		}

		// Convert to string
		params[jsonName] = fmt.Sprintf("%v", field.Interface())
	}

	return params
}

// ResponseData contains the data returned by the Acronym Expander API.
type ResponseData struct {
	Acronym string `json:"acronym"`
	Expansions []ExpansionsItem `json:"expansions"`
	MostCommon MostCommonData `json:"most_common"`
	Source string `json:"source"`
	ContextProvided string `json:"context_provided"`
}

// ExpansionsItem represents an item in the Expansions array.
type ExpansionsItem struct {
	Expansion string `json:"expansion"`
	Description string `json:"description"`
	Category string `json:"category"`
}

// MostCommonData represents the most_common object.
type MostCommonData struct {
	Expansion string `json:"expansion"`
	Description string `json:"description"`
	Category string `json:"category"`
}

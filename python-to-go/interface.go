import "strings"

// START OMIT
type Reference interface {
	SetUUID(uuid string)
	SetTo(to []string)
	GetUUID() string
	GetTo() []string
	GetFromKind() string
	GetToKind() string
	GetAttribute() RefAttribute
	SetHref(string)
}

// ReferenceFieldName returns name of a field that is used to store the reference.
func ReferenceFieldName(r Reference) string {
	return strings.Replace(r.GetToKind(), "-", "_", -1) + "_refs"
}

// END OMIT

// START OMIT
{% for schema in schemas %}{% if schema.Type != "abstract" and schema.ID %}
	func (h *HTTP) Create{{ schema.JSONSchema.GoName }}(ctx context.Context,
		request *services.Create{{ schema.JSONSchema.GoName }}Request,
	) (*services.Create{{ schema.JSONSchema.GoName }}Response, error) {
        response := &services.Create{{ schema.JSONSchema.GoName }}Response{}
        _, err := h.Create(ctx, "{{ schema.Prefix }}{{ schema.PluralPath }}", request, response)
        return response, err
	}

// END OMIT

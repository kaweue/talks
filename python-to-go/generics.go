// START OMIT
// RESTCreate{{ schema.JSONSchema.GoName }} handles a REST create request.
func (service *ContrailService) RESTCreate{{ schema.JSONSchema.GoName }}(c echo.Context) error {
	requestData := &Create{{ schema.JSONSchema.GoName }}Request{}
	if err := c.Bind(requestData); err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("invalid JSON format: %s", err))
	}

// END OMIT

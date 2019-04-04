// RESTCreateServer handles a REST create request.
func (service *ContrailService) RESTCreateServer(c echo.Context) error {
	requestData := &CreateServerRequest{}
	if err := c.Bind(requestData); err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("invalid JSON format: %s", err))
	}

(...)

func (service *ContrailService) RESTCreateVirtualNetwork(c echo.Context) error {
	requestData := &CreateVirtualNetworkRequest{}
	if err := c.Bind(requestData); err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("invalid JSON format: %s", err))
	}

(...)

func (service *ContrailService) RESTCreateVirtualMachine(c echo.Context) error {
	requestData := &CreateVirtualMachineRequest{}
	if err := c.Bind(requestData); err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("invalid JSON format: %s", err))
	}

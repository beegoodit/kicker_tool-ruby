KickerTool.configure do |config|
  # Register self to be shown in the backend.
  #
  # Default: config.register_engine("KickerTool::Engine", {})
  #
  config.cmor.administrador.register_engine("KickerTool::Engine", {})

  # Set the resources, that will be shown in the backend menu.
  #
  # Default: config.resources_controllers = -> {[
  #            KickerTool::ExportsController
  #          ]}
  #
  config.resources_controllers = -> {
    [
      KickerTool::ExportsController
    ]
  }

  # Set the singular resources, that will be shown in the backend menu.
  #
  # Default: config.resource_controllers = -> {[
  #          ]}
  #
  config.resource_controllers = -> {
    []
  }

  # Set the services, that will be shown in the backend menu.
  #
  # Default: config.service_controllers = -> {[
  #          ]}
  #
  config.service_controllers = -> {
    []
  }

  # Set the sidebars, that will be shown in the backend menu.
  #
  # Default: config.sidebar_controllers = -> {[
  #          ]}
  #
  config.sidebar_controllers = -> {
    []
  }
end

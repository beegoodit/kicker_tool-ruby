module KickerTool
  class ExportsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Export
    end

    private

    def permitted_params
      params.require(:export).permit(:asset, :name)
    end
  end
end

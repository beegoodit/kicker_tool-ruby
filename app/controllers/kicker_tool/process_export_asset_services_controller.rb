module KickerTool
  class ProcessExportAssetServicesController < Cmor::Core::Backend::ServiceController::Base
    def self.service_class
      KickerTool::ProcessExportAssetService
    end

    private

    def permitted_params
      params.require(:process_export_asset_service).permit(:export_id)
    end
  end
end

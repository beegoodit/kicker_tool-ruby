module KickerTool
  class QualifyingsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Qualifying
    end

    def self.available_rest_actions
      super - %i[new create edit update destroy]
    end

    helper_method :export

    private

    def export
      @export ||= params.has_key?(:export_id) ? KickerTool::Export.find(params[:export_id]) : @resource.tournament.export
    end

    def load_collection
      @collection = params.has_key?(:export_id) ? export.tournament.qualifyings : super
    end

    def load_resource
      @resource = params.has_key?(:export_id) ? export.tournament.qualifyings.find(params[:id]) : super
    end
  end
end

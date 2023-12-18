module KickerTool
  class QualifyingsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Qualifying
    end

    def self.available_rest_actions
      super - %i[new create edit update destroy]
    end

    private

    def resource_path(resource)
      resource_router.send(:url_for, {action: :show, id: resource.id, only_path: true})
    end

    def export
      @export ||= KickerTool::Export.find(params[:export_id])
    end

    def load_collection
      @collection = export.tournament.qualifying
    end

    def load_resource
      @resource = export.tournament.qualifying.select { |q| q.id == params[:id] }.first
    end
  end
end

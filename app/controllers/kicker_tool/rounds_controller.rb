module KickerTool
  class RoundsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Round
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

    def qualifying
      @qualifying ||= export.tournament.qualifyings.find(params[:qualifying_id])
    end

    def load_collection
      @collection = qualifying.rounds
    end

    def load_resource
      @resource = qualifying.rounds.find(params[:id])
    end
  end
end

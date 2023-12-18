module KickerTool
  class StatsController < Cmor::Core::Backend::ResourceController::Base
    def self.resource_class
      KickerTool::Stats
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
      @qualifying ||= export.tournament.qualifying.select { |q| q.id == params[:qualifying_id] }.first
    end

    def standing
      @standing ||= qualifying.standings.select { |s| s.id == params[:standing_id] }.first
    end

    def load_resource
      @resource = standing.stats
    end
  end
end

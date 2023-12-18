module KickerTool
  class MatchesController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Match
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

    def round
      @round ||= qualifying.rounds.select { |r| r.id == params[:round_id] }.first
    end

    def load_collection
      @collection = round.matches
    end

    def load_resource
      @resource = matches.select { |p| p.id == params[:id] }.first
    end
  end
end

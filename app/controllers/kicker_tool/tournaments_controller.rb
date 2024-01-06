module KickerTool
  class TournamentsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Tournament
    end

    private

    def permitted_params
      params.require(:tournament).permit
    end
  end
end

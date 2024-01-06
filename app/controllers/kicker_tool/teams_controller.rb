module KickerTool
  class TeamsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Team
    end

    def self.available_rest_actions
      %i(index show)
    end

    private

    def permitted_params
      params.require(:team).permit()
    end
  end
end

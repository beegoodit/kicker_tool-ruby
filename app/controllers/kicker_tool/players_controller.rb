module KickerTool
  class PlayersController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Player
    end

    def self.available_rest_actions
      %i(index show)
    end

    private

    def permitted_params
      params.require(:player).permit()
    end
  end
end

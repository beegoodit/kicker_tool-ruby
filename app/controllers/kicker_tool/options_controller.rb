module KickerTool
  class OptionsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Options
    end

    def self.available_rest_actions
      %i(index show)
    end

    private

    def permitted_params
      params.require(:options).permit()
    end
  end
end

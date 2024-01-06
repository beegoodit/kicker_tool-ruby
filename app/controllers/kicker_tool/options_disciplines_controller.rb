module KickerTool
  class OptionsDisciplinesController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::OptionsDiscipline
    end

    def self.available_rest_actions
      %i(index show)
    end

    private

    def permitted_params
      params.require(:options_discipline).permit()
    end
  end
end

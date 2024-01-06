module KickerTool
  class DisciplinesController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Discipline
    end

    def self.available_rest_actions
      %i(index show)
    end

    private

    def permitted_params
      params.require(:discipline).permit()
    end
  end
end

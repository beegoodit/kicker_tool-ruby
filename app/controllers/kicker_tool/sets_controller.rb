module KickerTool
  class SetsController < Cmor::Core::Backend::ResourcesController::Base
    def self.resource_class
      KickerTool::Set
    end

    def self.available_rest_actions
      %i(index show)
    end

    private

    def permitted_params
      params.require(:sets).permit()
    end
  end
end

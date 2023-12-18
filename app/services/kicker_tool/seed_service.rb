module KickerTool
  class SeedService < JsonSeeds::SeedService::Base
    class Result < JsonSeeds::SeedService::Result::Base
    end

    private

    def model_name_map
      @model_name_map ||= {}
    end

    def seed_path
      @seed_path ||= KickerTool::Engine.root.join("db", "seeds")
    end
  end
end

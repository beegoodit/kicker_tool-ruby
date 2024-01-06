module KickerTool
  class Stats < ApplicationRecord
    belongs_to :standing

    def matches_attributes=(value)
      self.matches = value
    end
  end
end

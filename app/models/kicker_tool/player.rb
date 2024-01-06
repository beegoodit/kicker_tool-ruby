module KickerTool
  class Player < ApplicationRecord
    belongs_to :team

    def players_attributes=(value)
      raise "players is not supported" unless value == []
    end
  end
end

module KickerTool
  class Participant < ApplicationRecord
    belongs_to :qualifying

    attr_accessor :players

    def players_attributes=(value)
      raise "players is not supported" unless value == []
      self.players = value
    end
  end
end

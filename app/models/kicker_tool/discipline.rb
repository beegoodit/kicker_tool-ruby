module KickerTool
  class Discipline < ApplicationModel
    attribute :_id
    attribute :play_id
    attribute :sets
    attribute :team1_confirmed
    attribute :team2_confirmed

    def sets=(value)
      super(value&.map { |v| Set.new(v) })
    end
  end
end

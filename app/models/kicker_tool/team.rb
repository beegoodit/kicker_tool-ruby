module KickerTool
  class Team < ApplicationModel
    attribute :_id
    attribute :avatar
    attribute :deactivated
    attribute :external
    attribute :guest
    attribute :hash
    attribute :marked_for_removal
    attribute :name
    attribute :players
    attribute :removed

    def players=(value)
      super(value&.map { |v| Player.new(v) })
    end
  end
end

module KickerTool
  class Qualifying < ApplicationModel
    attribute :_id
    attribute :hash
    attribute :name
    attribute :participants
    attribute :rounds
    attribute :standings

    def participants=(value)
      super(value&.map { |v| Participant.new(v) })
    end

    def rounds=(value)
      super(value&.map { |v| Round.new(v) })
    end

    def standings=(value)
      super(value&.map { |v| Standing.new(v) })
    end
  end
end

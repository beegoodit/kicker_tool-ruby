module KickerTool
  class Round < ApplicationModel
    attribute :_id
    attribute :group_id
    attribute :hash
    attribute :matches
    attribute :name
    attribute :round_id

    def matches=(value)
      super(value&.map { |v| Match.new(v) })
    end
  end
end

module KickerTool
  class Standing < ApplicationModel
    attribute :_id
    attribute :deactivated
    attribute :group_id
    attribute :guest
    attribute :hash
    attribute :marked_for_removal
    attribute :name
    attribute :removed
    attribute :stats

    def stats=(value)
      super(Stats.new(value))
    end
  end
end

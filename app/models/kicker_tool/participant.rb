module KickerTool
  class Participant < ApplicationModel
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
  end
end

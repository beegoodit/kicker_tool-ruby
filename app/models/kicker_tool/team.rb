module KickerTool
  class Team < ApplicationRecord
    belongs_to :match
    has_many :players, dependent: :destroy
    accepts_nested_attributes_for :players
  end
end

module KickerTool
  class Match < ApplicationRecord
    belongs_to :round
    has_many :disciplines, dependent: :destroy
    accepts_nested_attributes_for :disciplines
    has_one :team1, dependent: :destroy, class_name: "KickerTool::Team"
    accepts_nested_attributes_for :team1
    has_one :team2, dependent: :destroy, class_name: "KickerTool::Team"
    accepts_nested_attributes_for :team2

    serialize :result, Array
  end
end

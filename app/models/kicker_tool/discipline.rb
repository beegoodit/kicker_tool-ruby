module KickerTool
  class Discipline < ApplicationRecord
    belongs_to :match
    has_many :sets, dependent: :destroy
    accepts_nested_attributes_for :sets
  end
end

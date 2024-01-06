module KickerTool
  class Tournament < ApplicationRecord
    belongs_to :export
    has_one :options, dependent: :destroy
    accepts_nested_attributes_for :options
    has_many :qualifyings, dependent: :destroy
    accepts_nested_attributes_for :qualifyings

    attr_accessor :eliminations
  end
end

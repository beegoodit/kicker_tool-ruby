module KickerTool
  class Options < ApplicationRecord
    belongs_to :tournament
    has_many :options_disciplines, dependent: :destroy
    accepts_nested_attributes_for :options_disciplines

    def disciplines_attributes=(value)
      self.options_disciplines_attributes = value
    end
  end
end

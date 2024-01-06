module KickerTool
  class Round < ApplicationRecord
    belongs_to :qualifying

    has_many :matches, dependent: :destroy
    accepts_nested_attributes_for :matches
  end
end

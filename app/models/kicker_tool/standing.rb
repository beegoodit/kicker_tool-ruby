module KickerTool
  class Standing < ApplicationRecord
    belongs_to :qualifying

    has_one :stats, dependent: :destroy
    accepts_nested_attributes_for :stats
  end
end

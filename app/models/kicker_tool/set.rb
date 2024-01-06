module KickerTool
  class Set < ApplicationRecord
    belongs_to :discipline

    serialize :scores, Array
  end
end

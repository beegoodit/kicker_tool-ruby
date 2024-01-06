module KickerTool
  class Export < ApplicationRecord
    has_one :tournament, dependent: :destroy
    has_one_attached :asset

    before_validation :set_name, if: -> { attachment_changes["asset"].present? }

    def human
      name
    end

    private

    def set_name
      self.name = File.basename(asset.filename.to_s, ".*")
    end
  end
end

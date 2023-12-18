module KickerTool
  class Export < ApplicationRecord
    has_one_attached :asset

    before_validation :set_name, if: -> { attachment_changes["asset"].present? }

    def tournament
      @tournament ||= Tournament.new(asset_json)
    end

    def asset_json
      JSON.parse(asset.download).deep_transform_keys(&:underscore).with_indifferent_access
    end

    private

    def set_name
      self.name = File.basename(asset.filename.to_s, ".*")
    end
  end
end

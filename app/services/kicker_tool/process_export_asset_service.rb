module KickerTool
  class ProcessExportAssetService < Rao::Service::Base
    class Result < Rao::Service::Result::Base
      attr_accessor :asset, :tournament, :parsed_asset
    end

    attr_accessor :export

    validates :asset, presence: true

    delegate :asset, to: :export, allow_nil: true

    private

    def _perform
      @result.asset
      @result.parsed_asset = parsed_asset
      @result.tournament = build_tournament
    end

    def build_tournament
      KickerTool::Tournament.new(parsed_asset)
    end

    def parsed_asset
      @parsed_asset ||= JSON.parse(asset.download).deep_transform_keys(&:underscore).with_indifferent_access
    end
  end
end

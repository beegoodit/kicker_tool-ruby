module KickerTool
  class ProcessExportAssetService < Rao::Service::Base
    class Result < Rao::Service::Result::Base
      attr_accessor :export, :parsed_asset, :tournament
    end

    attr_accessor :export, :export_id

    validates :export, presence: true

    def export
      @export ||= KickerTool::Export.find_by(id: export_id)
    end

    private

    def _perform
      @result.parsed_asset = parsed_asset
      @result.tournament = tournament
    end

    def save
      ActiveRecord::Base.transaction do
        tournament.save!
      end
    end

    def tournament
      @tournament ||= Tournament.new(parsed_asset).tap { _1.export = export }
    end

    def asset_content
      @asset_content ||= export.asset.download
    end

    def parsed_asset
      JSON.parse(asset_content).deep_transform_keys(&:underscore).with_indifferent_access.deep_transform_keys do |key|
        case key
        when "_id"
          key
        when "disciplines"
          "disciplines_attributes"
        when "display_config_id"
          "_display_config_id"
        when "group_id"
          "_group_id"
        when "play_id"
          "_play_id"
        when "hash"
          "_hash"
        when "matches"
          "matches_attributes"
        when "options"
          "options_attributes"
        when "participants"
          "participants_attributes"
        when "players"
          "players_attributes"
        when "qualifying"
          "qualifyings_attributes"
        when "rounds"
          "rounds_attributes"
        when "sets"
          "sets_attributes"
        when "standings"
          "standings_attributes"
        when "stats"
          "stats_attributes"
        when "round_id"
          "_round_id"
        when "team1"
          "team1_attributes"
        when "team2"
          "team2_attributes"
        when "valid"
          "_valid"
        else
          key
        end
      end
    end
  end
end

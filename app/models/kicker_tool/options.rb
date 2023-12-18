module KickerTool
  class Options < ApplicationModel
    attribute :_id
    attribute :attach_tables_to_groups
    attribute :automatic_mode
    attribute :automatic_table_scheduling
    attribute :bye_rating
    attribute :close_game_difference
    attribute :close_game_points_loose
    attribute :close_game_points_win
    attribute :combined_elimination_standings
    attribute :cross_group_seeding
    attribute :disable_planned_match_editing
    attribute :disciplines
    attribute :display_config_id
    attribute :draw
    attribute :dyp_mode
    attribute :elimination_third_place
    attribute :fair_play_rating
    attribute :fast_input
    attribute :has_disciplines
    attribute :hash
    attribute :ignore_removed_participants_in_standings
    attribute :max_lost_games
    attribute :max_participants
    attribute :multi_table_tournament
    attribute :num_players_per_team
    attribute :num_points
    attribute :num_sets
    attribute :num_tables
    attribute :points_draw
    attribute :points_win
    attribute :prevent_byes
    attribute :primary_color
    attribute :start_elimination
    attribute :table_config
    attribute :tables
    attribute :tables_per_play
    attribute :two_ahead
    attribute :use_close_game_rating

    validates :_id, presence: true
    validates :attach_tables_to_groups, presence: true
    validates :automatic_mode, presence: true
    validates :automatic_table_scheduling, presence: true
    validates :bye_rating, presence: true
    validates :close_game_difference, presence: true
    validates :close_game_points_loose, presence: true
    validates :close_game_points_win, presence: true
    validates :combined_elimination_standings, presence: true
    validates :cross_group_seeding, presence: true
    validates :disable_planned_match_editing, presence: true
    validates :disciplines, presence: true
    validates :display_config_id, presence: true
    validates :draw, presence: true
    validates :dyp_mode, presence: true
    validates :elimination_third_place, presence: true
    validates :fair_play_rating, presence: true
    validates :fast_input, presence: true
    validates :has_disciplines, presence: true
    validates :hash, presence: true
    validates :ignore_removed_participants_in_standings, presence: true
    validates :max_lost_games, presence: true
    validates :max_participants, presence: true
    validates :multi_table_tournament, presence: true
    validates :num_players_per_team, presence: true
    validates :num_points, presence: true
    validates :num_sets, presence: true
    validates :num_tables, presence: true
    validates :points_draw, presence: true
    validates :points_win, presence: true
    validates :prevent_byes, presence: true
    validates :primary_color, presence: true
    validates :start_elimination, presence: true
    validates :table_config, presence: true
    validates :tables, presence: true
    validates :tables_per_play, presence: true
    validates :two_ahead, presence: true
    validates :use_close_game_rating, presence: true
  end
end

class CreateKickerToolOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_options do |t|
      t.references :tournament, null: false, foreign_key: {to_table: "kicker_tool_tournaments"}
      t.string :_id
      t.boolean :attach_tables_to_groups
      t.boolean :automatic_mode
      t.boolean :automatic_table_scheduling
      t.boolean :bye_rating
      t.integer :close_game_difference
      t.integer :close_game_points_loose
      t.integer :close_game_points_win
      t.boolean :combined_elimination_standings
      t.boolean :cross_group_seeding
      t.boolean :disable_planned_match_editing
      t.string :_display_config_id
      t.boolean :draw
      t.boolean :dyp_mode
      t.boolean :elimination_third_place
      t.boolean :fair_play_rating
      t.boolean :fast_input
      t.boolean :has_disciplines
      t.string :_hash
      t.boolean :ignore_removed_participants_in_standings
      t.integer :max_lost_games
      t.integer :max_participants
      t.boolean :multi_table_tournament
      t.integer :num_players_per_team
      t.integer :num_points
      t.integer :num_sets
      t.integer :num_tables
      t.integer :points_draw
      t.integer :points_win
      t.boolean :prevent_byes
      t.string :primary_color
      t.boolean :start_elimination
      t.string :table_config
      t.string :tables
      t.integer :tables_per_play
      t.string :two_ahead
      t.string :use_close_game_rating

      t.timestamps
    end
  end
end

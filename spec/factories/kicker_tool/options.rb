FactoryBot.define do
  factory :option do
    attach_tables_to_groups { false }
    automatic_mode { false }
    automatic_table_scheduling { false }
    bye_rating { false }
    close_game_difference { 1 }
    close_game_points_loose { 1 }
    close_game_points_win { 1 }
    combined_elimination_standings { false }
    cross_group_seeding { false }
    disable_planned_match_editing { false }
    display_config_id { "MyString" }
    draw { false }
    dyp_mode { false }
    elimination_third_place { false }
    fair_play_rating { false }
    fast_input { false }
    has_disciplines { false }
    hash { "MyString" }
    ignore_removed_participants_in_standings { false }
    max_lost_games { 1 }
    max_participants { 1 }
    multi_table_tournament { false }
    num_players_per_team { 1 }
    num_points { 1 }
    num_sets { 1 }
    num_tables { 1 }
    points_draw { 1 }
    points_win { 1 }
    prevent_byes { false }
    primary_color { "MyString" }
    start_elimination { false }
    table_config { "MyString" }
    tables { "MyString" }
    tables_per_play { 1 }
    two_ahead { "MyString" }
    use_close_game_rating { "MyString" }
  end
end

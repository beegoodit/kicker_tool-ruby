FactoryBot.define do
  factory :stat do
    standing { nil }
    bh1 { "9.99" }
    bh2 { "9.99" }
    corrected_points_per_game { "9.99" }
    dis_diff { 1 }
    dis_draw { 1 }
    dis_lost { 1 }
    dis_won { 1 }
    draws { 1 }
    final_result { false }
    goal_diff { 1 }
    goals { 1 }
    goals_in { 1 }
    last_round { 1 }
    lives { 1 }
    lost { 1 }
    matches { 1 }
    place { 1 }
    points { 1 }
    points_per_game { "9.99" }
    sb { 1 }
    sets_diff { 1 }
    sets_lost { 1 }
    sets_won { 1 }
    w_l { 1 }
    won { 1 }
  end
end

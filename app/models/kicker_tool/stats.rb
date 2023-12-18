module KickerTool
  class Stats < ApplicationModel
    attribute :bh1
    attribute :bh2
    attribute :corrected_points_per_game
    attribute :dis_diff
    attribute :dis_draw
    attribute :dis_lost
    attribute :dis_won
    attribute :draws
    attribute :final_result
    attribute :goal_diff
    attribute :goals
    attribute :goals_in
    attribute :last_round
    attribute :lives
    attribute :lost
    attribute :matches
    attribute :place
    attribute :points
    attribute :points_per_game
    attribute :sb
    attribute :sets_diff
    attribute :sets_lost
    attribute :sets_won
    attribute :w_l
    attribute :won

    def _id
    end
  end
end

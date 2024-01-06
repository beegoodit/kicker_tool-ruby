class CreateKickerToolStats < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_stats do |t|
      t.references :standing, null: false, foreign_key: {to_table: "kicker_tool_standings"}
      t.decimal :bh1
      t.decimal :bh2
      t.decimal :corrected_points_per_game
      t.integer :dis_diff
      t.integer :dis_draw
      t.integer :dis_lost
      t.integer :dis_won
      t.integer :draws
      t.boolean :final_result
      t.integer :goal_diff
      t.integer :goals
      t.integer :goals_in
      t.integer :last_round
      t.integer :lives
      t.integer :lost
      t.integer :matches
      t.integer :place
      t.integer :points
      t.decimal :points_per_game
      t.integer :sb
      t.integer :sets_diff
      t.integer :sets_lost
      t.integer :sets_won
      t.integer :w_l
      t.integer :won

      t.timestamps
    end
  end
end

class CreateKickerToolOptionsDisciplines < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_options_disciplines do |t|
      t.references :options, null: false, foreign_key: {to_table: "kicker_tool_options"}
      t.string :_id
      t.boolean :draw
      t.boolean :fast_input
      t.string :name
      t.integer :num_points
      t.integer :num_sets
      t.boolean :two_ahead

      t.timestamps
    end
  end
end

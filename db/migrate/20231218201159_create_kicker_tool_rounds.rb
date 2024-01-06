class CreateKickerToolRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_rounds do |t|
      t.references :qualifying, null: false, foreign_key: {to_table: "kicker_tool_qualifyings"}
      t.string :_id
      t.string :_group_id
      t.string :_hash
      t.string :name
      t.string :_round_id

      t.timestamps
    end
  end
end

class CreateKickerToolQualifyings < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_qualifyings do |t|
      t.references :tournament, null: false, foreign_key: {to_table: "kicker_tool_tournaments"}
      t.string :_id
      t.string :_hash
      t.string :name

      t.timestamps
    end
  end
end

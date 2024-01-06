class CreateKickerToolSets < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_sets do |t|
      t.references :discipline, null: false, foreign_key: {to_table: "kicker_tool_disciplines"}
      t.string :_id
      t.string :scores

      t.timestamps
    end
  end
end

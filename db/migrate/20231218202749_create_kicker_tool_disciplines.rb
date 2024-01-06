class CreateKickerToolDisciplines < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_disciplines do |t|
      t.references :match, null: false, foreign_key: {to_table: "kicker_tool_matches"}
      t.string :_id
      t.string :_play_id
      t.boolean :team1_confirmed
      t.boolean :team2_confirmed

      t.timestamps
    end
  end
end

class CreateKickerToolMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_matches do |t|
      t.references :round, null: false, foreign_key: {to_table: "kicker_tool_rounds"}
      t.string :_id
      t.boolean :deactivated
      t.string :disciplines
      t.string :elimination_match
      t.boolean :forced_tables
      t.string :_group_id
      t.string :_hash
      t.string :result
      t.string :_round_id
      t.boolean :skipped
      t.string :tables
      t.boolean :team1bye
      t.boolean :team2bye
      t.timestamp :time_end
      t.timestamp :time_start
      t.boolean :_valid

      t.timestamps
    end
  end
end

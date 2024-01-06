class CreateKickerToolPlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_players do |t|
      t.references :team, null: false, foreign_key: {to_table: "kicker_tool_teams"}
      t.string :_id
      t.string :avatar
      t.boolean :deactivated
      t.string :external
      t.string :guest
      t.string :_hash
      t.boolean :marked_for_removal
      t.string :name
      t.boolean :removed

      t.timestamps
    end
  end
end

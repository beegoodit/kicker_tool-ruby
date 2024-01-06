class CreateKickerToolParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_participants do |t|
      t.references :qualifying, null: false, foreign_key: {to_table: "kicker_tool_qualifyings"}
      t.string :_id
      t.string :avatar
      t.boolean :deactivated
      t.string :external
      t.boolean :guest
      t.string :_hash
      t.boolean :marked_for_removal
      t.string :name
      t.boolean :removed

      t.timestamps
    end
  end
end

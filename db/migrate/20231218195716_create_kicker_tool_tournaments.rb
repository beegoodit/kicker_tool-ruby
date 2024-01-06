class CreateKickerToolTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_tournaments do |t|
      t.references :export, null: false, foreign_key: {to_table: "kicker_tool_exports"}
      t.string :_id
      t.string :mode
      t.string :name
      t.string :name_type
      t.string :sport
      t.integer :stage
      t.integer :version
      t.timestamp :_created_at
      t.timestamp :_updated_at

      t.timestamps
    end
  end
end

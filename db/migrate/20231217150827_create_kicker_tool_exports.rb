class CreateKickerToolExports < ActiveRecord::Migration[7.0]
  def change
    create_table :kicker_tool_exports do |t|
      t.string :name

      t.timestamps
    end
  end
end

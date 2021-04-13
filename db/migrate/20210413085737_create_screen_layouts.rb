class CreateScreenLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :screen_layouts do |t|
      t.references :screen, foreign_key: true
      t.references :seat, foreign_key: true
      t.integer :category, default: 0
      t.string :row

      t.timestamps
    end
  end
end

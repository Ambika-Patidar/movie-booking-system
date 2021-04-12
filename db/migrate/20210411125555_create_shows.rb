class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.references :movie, foreign_key: true
      t.references :screen, foreign_key: true
      t.integer :time_slot, default: 0
      t.date :show_date
      t.float :base_price

      t.timestamps
    end
  end
end

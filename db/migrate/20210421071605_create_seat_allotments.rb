class CreateSeatAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table :seat_allotments do |t|
      t.references :screen_layout, foreign_key: true
      t.references :show, foreign_key: true
      t.references :booking, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :show, foreign_key: true
      t.references :user, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end

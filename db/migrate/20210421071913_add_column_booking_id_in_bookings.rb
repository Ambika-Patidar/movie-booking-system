class AddColumnBookingIdInBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_id, :string
  end
end

class SeatAllotment < ApplicationRecord
  belongs_to :screen_layout
  belongs_to :show
  belongs_to :booking

  enum status:{ available: 0, booked: 1 }
end

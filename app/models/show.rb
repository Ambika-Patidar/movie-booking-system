class Show < ApplicationRecord
  belongs_to :screen
  belongs_to :movie
  has_many :seat_allotments

  enum time_slot:{ '12-3 pm': 0, '3-6 pm': 1, '6-9 pm': 2, '9-12 pm': 3 }

  validates :base_price, presence: true
  validates :show_date, presence: true
end


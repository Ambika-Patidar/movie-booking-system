class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :user
  has_many :seat_allotments
  delegate :movie, to: :show
  delegate :screen, to: :show

  after_initialize :set_booking_id

  validates :price, presence: true
  validates :booking_id, presence: true

  scope :order_by_recent, -> { order(created_at: :desc) }
 
  scope :filter_from_date, ->(query) { joins(:show).where("show_date >= ?", query)}
  scope :filter_to_date, ->(query) { joins(:show).where("show_date <= ?", query)}
  scope :filter_between_date, ->(start_date, end_date) { 
    joins(:show).where("show_date >= ? AND show_date <= ?",
      start_date, end_date) }

  private
  def set_booking_id
    self.booking_id = "OI-#{format('%.3d', id.to_i)}#{Time.now.to_i}"
  end  
end

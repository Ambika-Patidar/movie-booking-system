class ScreenLayout < ApplicationRecord
  belongs_to :screen
  belongs_to :seat, optional: true
  has_many :seat_allotments
  
  enum category: { lower: 0, upper: 1 }

  scope :show_seat_allotments, -> (id) { joins("LEFT JOIN seat_allotments
                                         ON seat_allotments.screen_layout_id = screen_layouts.id
                                         AND seat_allotments.show_id = #{id}")
                                  .select('seat_allotments.status, category, row, seat_number, screen_layouts.id')
                                  .group_by(&:row)
                                  .group_by{|_,rows| rows&.first&.category}}

  validates :seat_number, presence: true
  validates :row, presence: true
end

class Seat < ApplicationRecord
  has_many :screen_layouts
  has_many :screens, through: :screen_layouts

  validates :name, presence: true
end
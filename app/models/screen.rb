class Screen < ApplicationRecord
  has_many :screen_layouts
  has_many :seats, through: :screen_layouts

  validates :name, presence: true
end

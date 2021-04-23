class Movie < ApplicationRecord
  has_many :shows
  enum status: { active: true, in_active: false }
  
  scope :order_by_recent, -> { order(created_at: :desc) }

  validates :name, presence: true
  validates :thumbnail_url, presence: true
end

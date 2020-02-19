class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :phone_number, presence: true
end

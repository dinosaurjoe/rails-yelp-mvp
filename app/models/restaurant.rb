class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES,
    message: "%{value} is not a correct category" }
end

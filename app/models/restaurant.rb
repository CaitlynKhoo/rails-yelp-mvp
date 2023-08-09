class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # A restaurant must have a name, an address and a category
  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORY }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # A restaurant must have at least : a name, an address and a category
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence:true
  validates_inclusion_of :category, in: CATEGORY

end

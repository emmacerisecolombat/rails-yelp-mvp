class Review < ApplicationRecord
  belongs_to :restaurant

  RATE = 0..5
  validates :content, :rating, presence:true
  validates_inclusion_of :rating, in: RATE
  validates :rating, numericality: true
end

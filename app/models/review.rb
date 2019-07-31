class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: true, inclusion: { in: 0..5, message: "%{value} is not a valid rating" }
end

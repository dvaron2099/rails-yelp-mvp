class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [1, 2, 3, 4, 5]

  validates_presence_of :content, :rating

  validates_inclusion_of :rating, in: RATING
  validates :rating, numericality: { only_integer: true, message: "debe ser un número entero" }
end

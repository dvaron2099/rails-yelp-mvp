class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian horse japanese french belgian)
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address, :category, :phone_number

  validates_inclusion_of :category, in: CATEGORY
end

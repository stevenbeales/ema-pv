class Product < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :product
  validates_associated :adverse_reactions
  validates :name, presence: true
end

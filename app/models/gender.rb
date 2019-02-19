class Gender < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :gender
  validates_associated :adverse_reactions
  validates :code, presence: true
end

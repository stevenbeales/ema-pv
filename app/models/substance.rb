class Substance < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :substance
  validates_associated :adverse_reactions
  validates :name, presence: true
end

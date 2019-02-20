class AgeGroup < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :age_group
  validates_associated :adverse_reactions
  validates :code, presence: true
  validates_uniqueness_of :code
end

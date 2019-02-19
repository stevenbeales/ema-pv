class LowLevelTerm < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :low_level_term
  validates_associated :adverse_reactions
  validates :code, presence: true
end

class HighLevelTerm < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :high_level_term
  validates_associated :adverse_reactions
  validates :code, presence: true
end

class AdverseReactionType < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :adverse_reaction_type
  validates_associated :adverse_reactions
  validates :name, presence: true
end

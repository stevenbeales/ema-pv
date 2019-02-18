class AdverseReaction < ApplicationRecord
  belongs_to :product
  belongs_to :substance
  belongs_to :adverse_reaction_type
  belongs_to :meddra
  belongs_to :system_organ_class
end

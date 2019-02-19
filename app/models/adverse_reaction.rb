class AdverseReaction < ApplicationRecord
  belongs_to :product
  belongs_to :substance
  belongs_to :adverse_reaction_type
  belongs_to :meddra
  belongs_to :system_organ_class
  belongs_to :age_group
  belongs_to :causality
  belongs_to :class_warning
  belongs_to :frequency
  belongs_to :gender
  belongs_to :post_marketing
  belongs_to :clinical_trial
end

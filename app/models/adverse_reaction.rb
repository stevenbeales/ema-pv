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
  belongs_to :high_level_group_term
  belongs_to :high_level_term
  belongs_to :low_level_term
  
  validates_presence_of :product
  validates_presence_of :substance
  validates_presence_of :date_most_recent_spc
  validates_presence_of :meddra
  validates_presence_of :adverse_reaction_type  
  validates_presence_of :age_group
  validates_presence_of :frequency
  validates_presence_of :clinical_trial
  validates_presence_of :system_organ_class
  validates_presence_of :post_marketing
end

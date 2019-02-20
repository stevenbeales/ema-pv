class ClinicalTrial < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :clinical_trial
  validates_associated :adverse_reactions
  validates :code, presence: true
  validates_uniqueness_of :code, allow_blank: true
end

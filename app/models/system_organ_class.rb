class SystemOrganClass < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :system_organ_class
  validates_associated :adverse_reactions
  validates :soc_code, presence: true
  validates :soc, presence: true, allow_blank: true
end

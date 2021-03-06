class Frequency < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :frequency
  validates_associated :adverse_reactions
  validates :code, presence: true
  validates_uniqueness_of :code, allow_blank: true
end

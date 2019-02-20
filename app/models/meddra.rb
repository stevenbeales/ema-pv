class Meddra < ApplicationRecord  
  has_many :adverse_reactions, inverse_of: :meddra
  validates_associated :adverse_reactions
  validates :preferred_term, presence: true
  validates :preferred_term_code, presence: :true
  validates_uniqueness_of :preferred_term
end

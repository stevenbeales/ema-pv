class Meddra < ApplicationRecord  
  has_many :adverse_reactions, inverse_of: :meddra

  validates :preferred_term, presence: true
  validates :preferred_term_code, presence: :true
end

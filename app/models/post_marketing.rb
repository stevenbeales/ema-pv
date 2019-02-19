class PostMarketing < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :post_marketing
  validates_associated :adverse_reactions
  validates :code, presence: true
end

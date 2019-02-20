class ClassWarning < ApplicationRecord
  has_many :adverse_reactions, inverse_of: :class_warning
  validates_associated :adverse_reactions
  validates :code, presence: true
  validates_uniqueness_of :code
end

class AddTermsToAdverseReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :adverse_reactions, :high_group_level_term_id, :integer
    add_column :adverse_reactions, :high_level_term_id, :integer
    add_column :adverse_reactions, :low_level_term_id, :integer
  end
end

class AddCodesToAdverseReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :adverse_reactions, :causality_id, :integer
    add_column :adverse_reactions, :frequency_id, :integer
    add_column :adverse_reactions, :class_warning_id, :integer
    add_column :adverse_reactions, :post_marketing_id, :integer
  end
end

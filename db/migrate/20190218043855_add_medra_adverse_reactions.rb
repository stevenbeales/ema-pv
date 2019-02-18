class AddMedraAdverseReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :adverse_reactions, :meddra_id, :integer
    add_column :adverse_reactions, :system_organ_class_id, :integer
  end
end

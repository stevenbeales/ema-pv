class AddClinicalTrialsToAdverseReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :adverse_reactions, :clinical_trial_id, :integer
  end
end

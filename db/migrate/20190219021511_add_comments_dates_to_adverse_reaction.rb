class AddCommentsDatesToAdverseReaction < ActiveRecord::Migration[5.2]
  def change
    add_column :adverse_reactions, :date_most_recent_spc, :date 
    add_column :adverse_reactions, :comments, :string
  end
end

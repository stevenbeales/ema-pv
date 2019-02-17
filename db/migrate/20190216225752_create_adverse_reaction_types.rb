class CreateAdverseReactionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :adverse_reaction_types do |t|
      t.string :name

      t.timestamps
    end
  end
end

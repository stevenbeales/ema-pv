class CreateAdverseReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :adverse_reactions do |t|
      t.integer :product_id
      t.integer :substance_id
      t.integer :adverse_reaction_type_id

      t.timestamps
    end
  end
end

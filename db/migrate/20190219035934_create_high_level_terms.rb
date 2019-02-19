class CreateHighLevelTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :high_level_terms do |t|
      t.string :code

      t.timestamps
    end
  end
end

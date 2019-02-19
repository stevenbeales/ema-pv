class CreateLowLevelTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :low_level_terms do |t|
      t.string :code

      t.timestamps
    end
  end
end

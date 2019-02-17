class CreateSubstances < ActiveRecord::Migration[5.2]
  def change
    create_table :substances do |t|
      t.string :name

      t.timestamps
    end
  end
end

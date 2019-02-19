class CreateFrequencies < ActiveRecord::Migration[5.2]
  def change
    create_table :frequencies do |t|
      t.string :code

      t.timestamps
    end
  end
end

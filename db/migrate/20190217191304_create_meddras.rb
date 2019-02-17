class CreateMeddras < ActiveRecord::Migration[5.2]
  def change
    create_table :meddras do |t|
      t.string :preferred_term
      t.string :preferred_term_code

      t.timestamps
    end
  end
end

class CreateClassWarnings < ActiveRecord::Migration[5.2]
  def change
    create_table :class_warnings do |t|
      t.string :code

      t.timestamps
    end
  end
end

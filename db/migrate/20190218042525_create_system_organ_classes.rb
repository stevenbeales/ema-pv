class CreateSystemOrganClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :system_organ_classes do |t|
      t.string :soc_code

      t.timestamps
    end
  end
end

class AddSocToSystemOrganClass < ActiveRecord::Migration[5.2]
  def change
    add_column :system_organ_classes, :soc, :string   
  end
end

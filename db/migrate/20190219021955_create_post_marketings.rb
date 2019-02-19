class CreatePostMarketings < ActiveRecord::Migration[5.2]
  def change
    create_table :post_marketings do |t|
      t.string :code

      t.timestamps
    end
  end
end

class AddProductDetails < ActiveRecord::Migration[7.1]
  def change
    change_table :products, primary_key: [:prod_id] do |t|
      t.string :name
      t.string :desc
      t.integer :price
      t.integer :stock
      t.string :size
      t.integer :cat_id, foreign_key: true
      t.integer :prod_id
    end
  end
end

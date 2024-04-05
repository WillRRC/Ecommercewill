class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :stock
      t.string :size
      t.belongs_to :cat_id, foreign_key: true
      t.integer :prod_id
      t.integer :price

      t.timestamps
    end
  end
end

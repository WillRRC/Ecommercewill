class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :catname
      t.string :catdesc
      t.integer :cat_id

      t.timestamps
    end
  end
end

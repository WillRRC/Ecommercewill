class AddCategorydetails < ActiveRecord::Migration[7.1]
    def change
      change_table :categories, primary_key: [:cat_id] do |t|
        t.string :catname
        t.string :catdesc
        t.integer :cat_id
      end
    end
  end

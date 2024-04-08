class CreateOrderInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :order_infos do |t|

      t.timestamps
    end
  end
end

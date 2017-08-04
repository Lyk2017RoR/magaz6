class CreateOrderedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_items do |t|
      t.string :order_id
      t.string :product_id

      t.timestamps
    end
  end
end

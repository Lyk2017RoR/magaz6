class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :title
      t.string :photo
      t.text :description
      t.integer :price
      t.text :status
      t.string :brand_id
      t.string :category_id

      t.timestamps
    end
  end
end

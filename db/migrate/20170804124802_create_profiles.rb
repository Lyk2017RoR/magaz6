class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.integer :birth_date
      t.string :adress
      t.string :city

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :password
      t.string :phone_number
      t.string :birth_date
      t.string :city
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end

class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.integer :customer_id
      t.string :name
      t.text :body
      t.string :phone_number
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end

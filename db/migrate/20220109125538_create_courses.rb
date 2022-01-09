class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :rest_id
      t.string :name
      t.text :introduction
      t.integer :price
      t.boolean :is_booked

      t.timestamps
    end
  end
end

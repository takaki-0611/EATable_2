class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :course_id
      t.date :day
      t.time :time
      t.integer :headcount

      t.timestamps
    end
  end
end

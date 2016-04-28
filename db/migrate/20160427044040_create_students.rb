class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :register_number
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.integer :address_id
      t.integer :batch_id

      t.timestamps null: false
    end
  end
end

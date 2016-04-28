class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staff_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :designation_id
      t.integer :department_id

      t.timestamps null: false
    end
  end
end

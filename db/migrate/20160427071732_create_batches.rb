class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :batch_id
      t.integer :year
      t.integer :department_id
      t.string :room_no
      t.integer :college_id

      t.timestamps null: false
    end
  end
end

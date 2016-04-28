class CreateBatchTimeTables < ActiveRecord::Migration
  def change
    create_table :batch_time_tables do |t|
      t.integer :batch_id
      t.integer :timing_id

      t.timestamps null: false
    end
  end
end

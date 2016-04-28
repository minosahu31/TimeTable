class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.integer :week_day_id
      t.integer :subject_id
      t.integer :slot_time_id
      t.integer :staff_id
      t.integer :batch_id

      t.timestamps null: false
    end
  end
end

class AddColumnToTimeTable1BatchId < ActiveRecord::Migration
  def change
  	add_column :time_table1s ,:batch_id ,:integer
  end
end

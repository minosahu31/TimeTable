class RenameTableName < ActiveRecord::Migration
  def change
  	rename_table :batch_time_tables, :branch_timings
  end
end

class RenameTableNamebranch < ActiveRecord::Migration
  def change
  	rename_table :branch_timings, :batch_timings
  end
end

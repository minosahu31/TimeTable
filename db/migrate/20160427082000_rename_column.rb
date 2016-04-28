class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :time_slots, :name, :time
  end
end

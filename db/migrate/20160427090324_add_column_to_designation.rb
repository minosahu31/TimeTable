class AddColumnToDesignation < ActiveRecord::Migration
  def change
  	add_column :designations, :staff_id, :integer
  end
end

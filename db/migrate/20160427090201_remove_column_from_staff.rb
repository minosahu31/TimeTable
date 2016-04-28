class RemoveColumnFromStaff < ActiveRecord::Migration
  def change
  	remove_column :staffs, :designation_id
  end
end

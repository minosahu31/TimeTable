class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :students, :address_id
  end
end

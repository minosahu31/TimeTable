class AddColumnSudentIdToAddress < ActiveRecord::Migration
  def change
  	add_column :addresses, :student_id, :integer
  end
end

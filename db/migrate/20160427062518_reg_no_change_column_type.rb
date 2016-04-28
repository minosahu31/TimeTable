class RegNoChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :students, :register_number, :string
  end
end

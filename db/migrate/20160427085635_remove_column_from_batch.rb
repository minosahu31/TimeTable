class RemoveColumnFromBatch < ActiveRecord::Migration
  def change
  	remove_column :batches, :college_id
  end
end

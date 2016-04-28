class BatchTimeTable < ActiveRecord::Base
	belongs_to :batch
	belongs_to :timing
end

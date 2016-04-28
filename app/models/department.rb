class Department < ActiveRecord::Base
	has_many :staffs
	has_many :batches
	belongs_to :college
end

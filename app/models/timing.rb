class Timing < ActiveRecord::Base
	belongs_to :subject
	belongs_to :staff
	belongs_to :time_slot
	belongs_to :week_day
	belongs_to :batch_id
	has_many :batch_timings
	has_many :batches, through: :batch_timings
end

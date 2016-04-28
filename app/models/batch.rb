class Batch < ActiveRecord::Base
	validates :year, presence: true
	validates :department_id, presence:true
	validates :room_no, presence:true
	validates :room_no, numericality: true, unless: "room_no.blank?"
	
	has_many :students, dependent: :destroy
	belongs_to :department
	#has_many :batch_timings
	#has_many :timings, through: :batch_timings
	has_one :time_table1
end

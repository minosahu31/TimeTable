class Staff < ActiveRecord::Base
	validates :staff_id, presence: true
	validates :first_name, presence:true
	validates :last_name, presence:true
	validates :email, presence:true
	#validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	
	belongs_to :department
	has_one :designation
end

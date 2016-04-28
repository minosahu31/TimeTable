class Student < ActiveRecord::Base
	validates :reigster_number, presence: true
	validates :first_name, presence:true
	validates :last_name, presence:true
	validates :email, presence:true
	validates :dob, presence:true
	#validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	has_one :address
	belongs_to :batch
end

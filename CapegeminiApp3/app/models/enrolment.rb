class Enrolment < ActiveRecord::Base
	belongs_to :student
	belongs_to :course

	validates :module_id, presence: true
	validates :student_id, presence: true
	validates :module_id, :uniqueness => { :scope => :student_id, :message => ": This student is already enrolled on this module." } 
	
end

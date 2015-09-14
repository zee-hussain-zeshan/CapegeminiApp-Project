class Student < ActiveRecord::Base
	self.primary_key = :student_id
	has_many :enrolments, :dependent => :delete_all
	has_many :courses, :through => :enrolments

	has_many :attends, :dependent => :delete_all
	has_many :sessions, :through => :attends

	has_many :assessments, :through => :takes
	
	validates_uniqueness_of :student_id, { message: ": a student with this ID already exists." }
	validates :student_id, presence: { message: ": Student ID is required" }
	validates :firstname, presence: true
	validates :surname, presence: true
	
end

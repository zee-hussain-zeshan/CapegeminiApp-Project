class Student < ActiveRecord::Base
	self.primary_key = :student_id
	has_many :enrolments, :dependent => :delete_all
	has_many :courses, :through => :enrolments

	has_many :attends, :dependent => :delete_all
	has_many :sessions, :through => :attends
	
	validates_uniqueness_of :student_id
	validates :student_id, presence: true
	validates :firstname, presence: true
	validates :surname, presence: true
	
end

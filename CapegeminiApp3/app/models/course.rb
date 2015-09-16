class Course < ActiveRecord::Base
	self.primary_key = :module_id
	has_many :enrolments, :foreign_key => 'module_id', :dependent => :delete_all
	has_many :students, :through => :enrolments
	has_many :sessions, :foreign_key => 'module_id', :dependent => :delete_all

	validates :module_id, presence: true, length: { minimum: 6 }
	validates :module_name, presence: true
	validates_uniqueness_of :module_id

end

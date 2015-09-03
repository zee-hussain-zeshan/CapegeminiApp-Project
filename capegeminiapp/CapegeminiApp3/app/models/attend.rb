class Attend < ActiveRecord::Base
	belongs_to :student
	belongs_to :session, :foreign_key => "session_id"

	validates_uniqueness_of :session_id, :scope => [:student_id]
end

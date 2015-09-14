class Take < ActiveRecord::Base
	belongs_to :student, :foreign_key => "student_id"
	belongs_to :assessment, :foreign_key => "assessments_id"

end

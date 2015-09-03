class Assessment < ActiveRecord::Base
	has_many :students, :through => :takes
	belongs_to :course
end
